class CreateWebhookStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_webhook_statuses do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.timestamp :sent_at
      t.string :code_sent
    end

    add_index :pyr_plaid_webhook_statuses, [:code_sent], name: :pyr_plaid_wh_st_cs
  end
end
