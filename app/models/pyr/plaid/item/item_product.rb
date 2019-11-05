module Pyr
  module Plaid
    class ItemProduct < ApplicationRecord
      include Pyr::Plaid::Concerns::Models::ItemProduct
    end
  end
end

