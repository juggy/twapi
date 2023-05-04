require 'rails_helper'

RSpec.describe AccountFollow, type: :model do
  it { should belong_to(:account) }
  it { should belong_to(:followed_account) }
end
