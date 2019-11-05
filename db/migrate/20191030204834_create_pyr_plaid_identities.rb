class CreatePyrPlaidIdentities < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_identities do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.integer :balance_id, null: false
    end

    add_index :pyr_plaid_identities, [:balance_id]
  end
end
