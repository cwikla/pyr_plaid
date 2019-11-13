module Pyr
  module Plaid
    class Identity
      class Email < ApplicationRecord
        include Pyr::Plaid::Concerns::Model::Identity::Email
      end
    end
  end
end
