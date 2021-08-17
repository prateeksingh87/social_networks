require 'rails_helper'

RSpec.describe TwitterTweets do
  def test_example_dot_com
    VCR.use_cassette("social_networks") do
      response = Net::HTTP.get_response(URI('https://takehome.io/twitter'))
      assert_match /Example domains/, response.body
    end
  end
end		

 