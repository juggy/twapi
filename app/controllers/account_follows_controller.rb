class AccountFollowsController < ApplicationController
  before_action :set_account
  before_action :set_account_follow, only: %i[ destroy ]

  # GET /account_follows
  def index
    @account_follows = @account.followed_accounts

    render json: @account_follows
  end

  # POST /account_follows
  def create
    @account_follow = @account.account_follows.new(account_follow_params)

    if @account_follow.save
      render json: @account_follow, status: :created, location: [@account, @account_follow]
    else
      render json: @account_follow.errors, status: :unprocessable_entity
    end
  end

  # DELETE /account_follows/1
  def destroy
    @account_follow.destroy
  end

  private

  def set_account
    @account = Account.find(params[:account_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_account_follow
    @account_follow = AccountFollow.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def account_follow_params
    params.require(:account_follow).permit(:followed_account_id)
  end
end
