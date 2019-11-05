module Pyr
  module Plaid
    module Identity
      class PhoneEmail < ApplicationRecord
        include Pyr::Plaid::Concerns::Models::Identity::PhoneEmail
      end
    end
  end
end
