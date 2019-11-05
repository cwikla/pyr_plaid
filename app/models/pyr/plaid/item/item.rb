module Pyr
  module Plaid
    class Item < ApplicationRecord
      include Pyr::Plaid::Concerns::Models::Item
    end
  end
end
