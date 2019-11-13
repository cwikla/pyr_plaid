class CreateItemStatusTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_item_status_transactions do |t|
      t.timestamps
      t.timestamp :deleted_at
    
      t.integer :get_response_id, null: false
      t.integer :item_id, null: false

      t.timestamp :last_successful_update
      t.timestamp :last_failed_update
    end

    add_index :pyr_plaid_item_status_transactions, [:item_id], name: :pyr_plaid_it_st
  end

end
