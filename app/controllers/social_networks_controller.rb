class SocialNetworksController < ApplicationController
	require 'net/http'
	require 'uri'
  
  def social_networks
  
  	#twitter api call and response
  	twitter_uri = URI.parse("https://takehome.io/twitter")
		facebook_uri = URI.parse("https://takehome.io/facebook")

		twitter_response = Net::HTTP.get_response(twitter_uri)
		facebook_response = Net::HTTP.get_response(facebook_uri)


    if twitter_response.code == "200" && facebook_response.code == "200"
			tweets_response = JSON.parse(twitter_response.body)
			facebook_status = JSON.parse(facebook_response.body)
			render json: { twitter: tweets_response.pluck(:tweet["tweet"]) ,facebook: facebook_status.pluck(:status["status"]) }
		else
			render json: { message: response.message, code: response.code }
    end
  end
end
