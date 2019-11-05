module Pyr
  module Plaid::Concerns::Model
    module WebhookStatus
      extend ActiveSupport::Concern

      included do
        self.table_name = "pyr_plaid_webhook_status"
      end

      module ClassMethods
      end

    end
  end
end

