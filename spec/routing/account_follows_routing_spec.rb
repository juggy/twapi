require "rails_helper"

RSpec.describe AccountFollowsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/accounts/1/account_follows").to route_to("account_follows#index", account_id: "1")
    end
    it "routes to #create" do
      expect(post: "/accounts/1/account_follows").to route_to("account_follows#create", account_id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/accounts/1/account_follows/1").to route_to("account_follows#destroy", account_id: "1", id: "1")
    end
  end
end
