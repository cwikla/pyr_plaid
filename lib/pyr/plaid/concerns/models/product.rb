module Pyr
  module Plaid::Concerns::Model
    module Product
      extend ActiveSupport::Concern

      included do
        self.table_name = "pyr_plaid_products"
      end

      module ClassMethods
        def unique(name)
          find_or_create_unique(name: name)
        end
      end

    end
  end
end

