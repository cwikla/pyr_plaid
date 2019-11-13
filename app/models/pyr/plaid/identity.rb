module Pyr
  module Plaid
    class Identity < ApplicationRecord
      include Pyr::Plaid::Concerns::Model::Identity
    end
  end
end
