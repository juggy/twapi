class CreateAccountFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :account_follows do |t|
      t.integer :account_id
      t.integer :followed_account_id

      t.timestamps
    end
  end
end
