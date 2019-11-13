module Pyr
  module Plaid
    class ItemProduct < ApplicationRecord
      include Pyr::Plaid::Concerns::Model::ItemProduct
    end
  end
end

