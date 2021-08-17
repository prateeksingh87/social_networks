class FacebookStatus
  def initialize
    
  end

  def save_status
    facebook_uri = URI.parse("https://takehome.io/facebook")
    Net::HTTP.get_response(facebook_uri)
  end
end