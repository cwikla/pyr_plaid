class CreatePyrPlaidItemProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_item_products do |t|
      t.timestamps
    
      t.integer :item_id, null: false
      t.integer :product_id, null: false
    end

    add_index :pyr_plaid_item_products, [:item_id, :product_id]
  end
end
