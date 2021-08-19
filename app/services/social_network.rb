class SocialNetwork
	def initialize(service)
    @url = 'https://takehome.io/'+ service
  end
  
  def social_tweets_and_status()
  	twitter_uri = URI.parse(@url)
    Net::HTTP.get_response(twitter_uri)
  end
end
