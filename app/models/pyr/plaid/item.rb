module Pyr
  module Plaid
    class Item < ApplicationRecord
      include Pyr::Plaid::Concerns::Model::Item
    end
  end
end
