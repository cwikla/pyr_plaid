class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_items do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.string :item_id, null: false, limit: 128
      t.string :institution_id, null: false # HMMMM
      t.string :webhook
    end

    add_index :pyr_plaid_items, [:item_id, :institution_id], name: :pyr_plaid_it_id_iid
  end
end
