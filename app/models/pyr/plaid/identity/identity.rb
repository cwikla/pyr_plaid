module Pyr
  module Plaid
    class Identity < ApplicationRecord
      include Pyr::Plaid::Concerns::Models::Identity
    end
  end
end
