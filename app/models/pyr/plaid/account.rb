module Pyr
  module Plaid
    class Account < ApplicationRecord
      include Pyr::Plaid::Concerns::Models::Acount
    end
  end
end
