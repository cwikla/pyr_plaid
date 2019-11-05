class CreatePyrPlaidAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_accounts do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.string :account_id, null: false #, limit: 128
    end
  end
end
