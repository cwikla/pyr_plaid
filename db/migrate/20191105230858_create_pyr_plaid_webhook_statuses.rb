class CreatePyrPlaidWebhookStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :pyr_plaid_webhook_statuses do |t|
      t.timestamps
      t.timestamp :deleted_at

      t.timestamp :sent_at
      t.string :code_sent
    end
  end
end
