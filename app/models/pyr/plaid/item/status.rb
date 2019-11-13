module Pyr
  module Plaid
    class Item
      class Status < ApplicationRecord
        include Pyr::Plaid::Concerns::Model::Item::Status
      end
    end
  end
end
