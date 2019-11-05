module Pyr
  module Plaid::Concerns::Model
    module Account
      extend ActiveSupport::Concern

      included do
        self.table_name = "pyr_plaid_accounts"
      end

      module ClassMethods
      end

    end
  end
end
