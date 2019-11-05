module Pyr
  module Plaid
    module Item
      class Status < ApplicationRecord
        include Pyr::Plaid::Concerns::Models::Item::Satus
      end
    end
  end
end
