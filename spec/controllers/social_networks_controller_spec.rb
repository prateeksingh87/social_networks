require "rails_helper"

RSpec.describe SocialNetworksController, :type => :controller do
  describe "GET social_networks" do
    it "has a 200 status code" do
      get :social_networks
      expect(response.code).to eq("200")
      assert_response :success
    end
  end
end