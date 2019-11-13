module Pyr::Plaid::Concerns::Model
  module Account
    extend ActiveSupport::Concern

    included do
      belongs_to :user

      has_many :balances #, class_name: "Pyr::Plaid::Balance"
      has_many :owners #, class_name: "Pyr::Plaid::Identity"
    end

    module ClassMethods
    end
  end
end
