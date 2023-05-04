class Account < ApplicationRecord
  has_many :account_follows
  has_many :followed_accounts, through: :account_follows
  has_many :tweets

  validates :email, :handle, presence: true
end
