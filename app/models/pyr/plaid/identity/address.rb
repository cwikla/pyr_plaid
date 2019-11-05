module Pyr
  module Plaid
    module Identity
      class PhoneAddress < ApplicationRecord
        include Pyr::Plaid::Concerns::Models::Identity::PhoneAddress
      end
    end
  end
end
