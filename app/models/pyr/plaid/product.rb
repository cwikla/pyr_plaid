module Pyr
  module Plaid
    class Product < ApplicationRecord
      include Pyr::Plaid::Concerns::Models::Product
    end
  end
end

