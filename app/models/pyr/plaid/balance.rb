module Pyr
  module Plaid
    class Balance < ApplicationRecord
      include Pyr::Plaid::Concerns::Model::Balance
    end
  end
end
