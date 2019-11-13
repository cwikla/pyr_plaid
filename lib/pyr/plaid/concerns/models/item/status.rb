module Pyr::Plaid::Concerns::Model
  module Item
    module Status
      extend ActiveSupport::Concern
  
      included do
        #self.table_name = "pyr_plaid_item_statuses"
  
        belongs_to :item #, class_name: "Pyr::Plaid::Item"

        has_many  :transactions #, class_name: "Pyr::Plaid::Item::Status::Transaction"
      end

      module ClassMethods
      end
    end
  end
end
