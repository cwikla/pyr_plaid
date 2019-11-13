module Pyr
  module Plaid
    class Item
      class Response < ApplicationRecord
        include Pyr::Plaid::Concerns::Model::Item::Response
      end
    end
  end
end

