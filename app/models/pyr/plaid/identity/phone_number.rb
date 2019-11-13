module Pyr
  module Plaid
    class Identity
      class PhoneNumber < ApplicationRecord
        include Pyr::Plaid::Concerns::Model::Identity::PhoneNumber
      end
    end
  end
end
