require 'rails_helper'

RSpec.describe Account, type: :model do
  it { should have_many(:account_follows) }
  it { should have_many(:followed_accounts) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:handle) }
end
