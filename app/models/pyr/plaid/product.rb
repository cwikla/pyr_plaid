module Pyr
  module Plaid
    class Product < ApplicationRecord
      include Pyr::Plaid::Concerns::Model::Product
    end
  end
end

