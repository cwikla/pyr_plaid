module Pyr
  module Plaid
    module Identity
      class PhoneNumber < ApplicationRecord
        include Pyr::Plaid::Concerns::Models::Identity::PhoneNumber
      end
    end
  end
end
