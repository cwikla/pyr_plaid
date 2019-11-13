module Pyr::Plaid::Concerns::Model
  module Item
    extend ActiveSupport::Concern

    included do
      #self.table_name = "pyr_plaid_items"

      has_many :item_products #, class_name: "Pyr::Plaid::ItemProduct"
      has_many :products, through: :item_products #, class_name: "Pyr::Plaid::Product"

      has_many :available_products, -> { available }, through: :item_products #, class_name: "Pyr::Plaid::Product"
      has_many :billed_products, -> { billed }, through: :item_products #, class_name: "Pyr::Plaid::Product"

      belongs_to :response #, class_name: "Pyr::Plaid::Item::Response"
    end

    module ClassMethods
    end
  end
end

