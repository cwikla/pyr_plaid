class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_accounts do |t|
      t.timestamps
      t.timestamp :deleted_at

      #t.integer :user_id

      t.string :account_id, null: false #, limit: 128
      t.string :name, null: false
      t.string :official_name

      t.string :mask, limit: 4
      t.string :subtype
      t.string :type

      t.string :verification_status, limit: 64 # (pending_automatic_verification, pending_manual_verification, manually_verified)
    end

    #add_index :pyr_plaid_accounts, [:user_id], name: :pyr_plaid_acc_uid
    add_index :pyr_plaid_accounts, [:account_id], name: :pyr_plad_acc_accid
  end
end
