module Pyr::Plaid::Concerns::Model
  module Item
    module Status
      module Transaction
        extend ActiveSupport::Concern

        included do
          self.table_name = "pyr_plaid_item_status_transactions"

          belongs_to :status, class_name: "Pyr::Plaid::Item::Status"
        end
    
        module ClassMethods
        end
      end
    end
  end
end

