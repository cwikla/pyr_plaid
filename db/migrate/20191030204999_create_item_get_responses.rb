class CreateItemGetResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_item_get_responses do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.string :request_id, limit: 32
    end

    add_index :pyr_plaid_item_get_responses, [:request_id, :created_at], name: :pyr_plaid_item_gr_req
  end
end
