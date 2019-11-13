class CreateBalances < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_balances do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.integer :account_id, null: false #, limit: 128

      t.decimal :available, precision: 14, scale: 4
      t.decimal :current, precision: 14, scale: 4

      t.string :iso_currency_code, limit: 3
    end

    add_index :pyr_plaid_balances, [:account_id], name: :pyr_plaid_bal
  end
end
