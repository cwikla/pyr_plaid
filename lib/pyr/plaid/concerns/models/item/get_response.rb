module Pyr::Plaid::Concerns::Model
  module GetResponse
    extend ActiveSupport::Concern

    included do
      #self.table_name = "pyr_plaid_item_get_responses"

      has_one :item #, class_name: "Pyr::Plaid::Item"
      has_one :status #, class_name: "Pyr::Plaid::Item::Status"
    end

    module ClassMethods
    end
  end
end

