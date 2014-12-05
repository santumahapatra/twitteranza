require 'rails_helper'

RSpec.describe TweetsController, :type => :controller do

  describe "#index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
