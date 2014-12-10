class TweetsController < ApplicationController
  before_action :authenticate_user!, :only => [:index, :create]
  before_action :current_user, only: :create

  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end

  def create
    @tweet = Tweet.new(tweet_params)
    puts @tweet

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to root_path, notice: 'Tweet was successfully created.' }
      else
        format.html { redirect_to root_path, notice: 'Tweet cannot be created if content is blank or greater than 140 characters' }
      end
    end
  end

  private

    def tweet_params
      params.require(:tweet).permit(:content, :user_id)
    end
end
