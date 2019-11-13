module Pyr::Plaid::Concerns::Model
  module Balance
    extend ActiveSupport::Concern

    included do
      #self.table_name = "pyr_plaid_balances"

      belongs_to :account #, class_name: "Pyr::Plaid::Account"
    end

    module ClassMethods
    end
  end
end
