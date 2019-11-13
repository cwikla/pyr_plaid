class CreatePyrPlaidAuths < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_auths do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.string :item_id, null: false, limit: 128
      t.string :access_token, null: false, limit: 128
    end

    add_index :pyr_plaid_auths, [:item_id]
  end
end
