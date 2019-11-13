module Pyr
  module Plaid
    class Identity
      class Address < ApplicationRecord
        include Pyr::Plaid::Concerns::Model::Identity::Address
      end
    end
  end
end
