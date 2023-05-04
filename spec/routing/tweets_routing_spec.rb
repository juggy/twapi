require "rails_helper"

RSpec.describe TweetsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/accounts/1/tweets").to route_to("tweets#index", account_id: "1")
    end

    it "routes to #show" do
      expect(get: "/accounts/1/tweets/1").to route_to("tweets#show", account_id: "1", id: "1")
    end

    it "routes to #create" do
      expect(post: "/accounts/1/tweets").to route_to("tweets#create", account_id: "1")
    end
  end
end
