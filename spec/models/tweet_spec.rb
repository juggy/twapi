require 'rails_helper'

RSpec.describe Tweet, type: :model do
  it { should belong_to(:account) }
  it { should validate_presence_of(:message) }
end
