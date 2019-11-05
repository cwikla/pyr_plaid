class CreatePyrPlaidItemStatusTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_item_status_transactions do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.timestamp :last_successful_update
      t.timestamp :last_failed_update
    end
  end
end
