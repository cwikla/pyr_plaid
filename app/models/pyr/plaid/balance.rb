module Pyr
  module Plaid
    class Balance < ApplicationRecord
      include Pyr::Plaid::Concerns::Models::Balance
    end
  end
end
