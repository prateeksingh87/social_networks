class SocialNetworksController < ApplicationController
	require 'net/http'
	require 'uri'
  
  def social_networks
  	twitter_response = TwitterTweets.new.save_tweets
  	facebook_response = FacebookStatus.new().save_status

  	begin 
  		tweets_response = JSON.parse(twitter_response.body)
		facebook_status = JSON.parse(facebook_response.body)
		render json: { twitter: tweets_response.pluck(:tweet["tweet"]) ,facebook: facebook_status.pluck(:status["status"]) }

    rescue  
    	puts "I am trapped in a social media factory send help"
    end
    	
  
  end
end
