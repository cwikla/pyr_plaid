module Pyr
  module Plaid
    class Item
      class Status
        class Transaction < ApplicationRecord
          include Pyr::Plaid::Concerns::Model::Item::Status::Transaction
        end
      end
    end
  end
end
