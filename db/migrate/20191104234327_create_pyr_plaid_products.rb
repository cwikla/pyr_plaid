class CreatePyrPlaidProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_products do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.string :name, unique: true, null: false #, limit: 128
    end

    add_index :pyr_plaid_products, [:name]
  end
end
