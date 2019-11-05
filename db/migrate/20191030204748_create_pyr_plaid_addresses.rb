class CreatePyrPlaidAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_addresses do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.integer :identity_id, null: false #, limit: 128

      t.string :street
      t.string :city
      t.string :region
      t.string :country
      t.string :postal_code

      t.boolean :primary, null: false, default: false
    end

    add_index :pyr_plaid_addresses, [:identity_id, :city, :region]
    add_index :pyr_plaid_addresses, [:postal_code]
  end
end
