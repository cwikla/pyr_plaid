module Pyr::Plaid::Concerns::Model
  module ItemProduct
    extend ActiveSupport::Concern

    included do
      #self.table_name = "pyr_plaid_item_products"

      belongs_to :item #, class_name: "Pyr::Plaid::Item"
      belongs_to :product #, class_name: "Pyr::Plaid::Product"

      scope :available, -> { where(billed: false) }
      scope :billed, -> { where(billed: true) }
    end

    module ClassMethods
    end
  end
end

