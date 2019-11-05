class CreatePyrPlaidNames < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_names do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.integer :identity_id, null: false #, limit: 128
      t.string :name, null: false
    end

    add_index :pyr_plaid_names, [:identity_id, :name]
  end
end
