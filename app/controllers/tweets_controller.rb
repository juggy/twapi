class TweetsController < ApplicationController
  before_action :set_account
  before_action :set_tweet, only: %i[show destroy]

  # GET /tweets
  def index
    @tweets = @account.tweets.all

    render json: @tweets
  end

  # GET /tweets/1
  def show
    render json: @tweet
  end

  # POST /tweets
  def create
    @tweet = @account.tweets.new(tweet_params)

    if @tweet.save
      render json: @tweet, status: :created, location: [@account, @tweet]
    else
      render json: @tweet.errors, status: :unprocessable_entity
    end
  end

  private
  def set_account
    @account = Account.find(params[:account_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_tweet
    @tweet = @account.tweets.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tweet_params
    params.require(:tweet).permit(:message)
  end
end
