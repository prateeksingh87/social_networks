class SocialNetworksController < ApplicationController
  def social_networks
    twitter_response = SocialNetwork.new('twitter').social_tweets_and_status
    facebook_response = SocialNetwork.new('facebook').social_tweets_and_status
  
    begin 
      tweets_response = JSON.parse(twitter_response.body)
      facebook_status = JSON.parse(facebook_response.body)
      render json: { twitter: tweets_response.pluck(:tweet["tweet"]) ,facebook: facebook_status.pluck(:status["status"]) }

    rescue => e
      render json: { message: e.message }
    end
  end
end
