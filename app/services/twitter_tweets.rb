class TwitterTweets
  def initialize
    
  end

  def save_tweets
    twitter_uri = URI.parse("https://takehome.io/twitter")
    Net::HTTP.get_response(twitter_uri)
  end
end