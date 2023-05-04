class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.text :message
      t.integer :account_id

      t.timestamps
    end
  end
end
