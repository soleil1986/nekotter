class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
  end

  def create
    Tweet.create(text: tweet_params[:text])
  end

  private
  def tweet_params
    params.permit(:text)
  end
end
