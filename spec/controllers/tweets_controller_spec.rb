require 'rails_helper'

RSpec.describe TweetsController, :type => :controller do

  describe '#index' do
    before do
      get :index
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders index template' do
      expect(response).to render_template(:index)
    end
  end

  describe 'POST #create' do

    context 'if tweet is blank' do
      it 'displays the page with error message' do
        post :create, tweet: {content: '' }
        expect(flash[:notice]).to match(/^Tweet is blank or greater than 140 characters/)
      end
    end

    context 'if tweet is more than 140 characters' do
      it 'displays the page with error message' do
        long_tweet = 'a' * 141
        post :create, tweet: { content: long_tweet }
        expect(flash[:notice]).to match(/^Tweet is blank or greater than 140 characters/)
      end
    end

    context 'if tweet is valid' do
      it 'displays the page with no error message' do
        post :create, tweet: { content: 'abc' }
        expect(flash[:notice]).to match(//)
      end
    end
  end

end
