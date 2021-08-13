require 'rails_helper'

RSpec.describe "SocialNetworks", type: :request do
  describe 'valid request' do
    it 'Should give tweets of twitter api and status for facebook ap' do
      get '/'
      expect(response.status).to eq 200
    end
  end
end

