require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/account_follows", type: :request do
  let(:main_account) { Account.create! email: 'j@example.com', handle: 'juggy' }
  let(:secondary_account) { Account.create email: 'b@example.com', handle: 'kramer' }

  # This should return the minimal set of attributes required to create a valid
  # AccountFollow. As you add validations to AccountFollow, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { account_id: main_account.id, followed_account_id: secondary_account.id } }

  let(:invalid_attributes) { {followed_account: "no"} }

  describe "GET /index" do
    it "renders a successful response" do
      AccountFollow.create! valid_attributes
      get account_account_follows_url(main_account), as: :json
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new AccountFollow" do
        expect {
          post account_account_follows_url(main_account),
               params: { account_follow: valid_attributes }, as: :json
        }.to change(AccountFollow, :count).by(1)
      end

      it "renders a JSON response with the new account_follow" do
        post account_account_follows_url(main_account),
             params: { account_follow: valid_attributes }, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new AccountFollow" do
        expect {
          post account_account_follows_url(main_account),
               params: { account_follow: invalid_attributes }, as: :json
        }.to change(AccountFollow, :count).by(0)
      end

      it "renders a JSON response with errors for the new account_follow" do
        post account_account_follows_url(main_account),
             params: { account_follow: invalid_attributes }, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested account_follow" do
      account_follow = AccountFollow.create! valid_attributes
      expect {
        delete account_account_follow_url(main_account, account_follow), as: :json
      }.to change(AccountFollow, :count).by(-1)
    end
  end
end