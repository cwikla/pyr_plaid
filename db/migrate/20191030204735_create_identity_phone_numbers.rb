class CreateIdentityPhoneNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_identity_phone_numbers do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.integer :identity_id, null: false # limit: 128

      t.string :data, null: false, limit: 32

      t.boolean :primary, null: false, default: false
      t.string :type, null: false, limit: 64
    end

    add_index :pyr_plaid_identity_phone_numbers, [:identity_id, :data], name: :pyr_plaid_id_pn
  end
end
