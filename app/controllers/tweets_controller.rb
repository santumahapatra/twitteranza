class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
    render 'index.html.erb'
  end

  def create
    @tweet = Tweet.new(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to root_path, notice: 'Tweet was successfully created.' }
        format.json { render :show, status: :created, location: @tweet }
      else
        format.html { redirect_to root_path, notice: 'Tweet is greater than 140 characters' }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def tweet_params
      params.require(:tweet).permit(:content)
    end
end
