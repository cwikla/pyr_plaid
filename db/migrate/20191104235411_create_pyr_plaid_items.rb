class CreatePyrPlaidItems < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_items do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.string :institution_id, null: false # HMMMM
      t.string :item_id, null: false
      t.string :webhook
    end

    add_index :pyr_plaid_items, [:institution_id, :item_id]
  end
end
