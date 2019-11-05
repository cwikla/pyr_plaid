module Pyr
  module Plaid
    module Item
      module Status
        class Transaction < ApplicationRecord
          include Pyr::Plaid::Concerns::Models::Item::Status::Transaction
        end
      end
    end
  end
end
