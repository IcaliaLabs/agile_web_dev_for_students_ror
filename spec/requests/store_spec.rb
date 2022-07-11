require 'rails_helper'

RSpec.describe "Stores", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
      expect(response.body).to include("Home")
      expect(response.body).to include("Questions")
    end
  end

end
