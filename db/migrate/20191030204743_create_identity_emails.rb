class CreateIdentityEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_identity_emails do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.integer :identity_id, null: false #, limit: 128

      t.string :email, null: false

      t.boolean :primary, null: false, default: false
      t.string :type, null: false, limit: 64
    end

    add_index :pyr_plaid_identity_emails, [:identity_id, :email], name: :pyr_plaid_id_em
  end
end
