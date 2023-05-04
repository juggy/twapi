class AccountFollow < ApplicationRecord
  belongs_to :account
  belongs_to :followed_account, class_name: 'Account'
end
