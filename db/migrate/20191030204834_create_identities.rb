class CreateIdentities < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_identities do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.integer :account_id, null: false
    end

    add_index :pyr_plaid_identities, [:account_id], name: :pyr_plaid_id_acc
  end
end
