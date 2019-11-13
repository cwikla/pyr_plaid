module Pyr
  module Plaid
    class Account < ApplicationRecord
      include Pyr::Plaid::Concerns::Model::Account
    end
  end
end
