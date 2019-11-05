class CreatePyrPlaidItemStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_item_statuses do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.integer :item_id, null: false
    end

    add_index :pyr_plaid_item_statuses, [:item_id]
  end
end
