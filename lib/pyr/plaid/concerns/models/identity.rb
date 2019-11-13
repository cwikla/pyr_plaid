module Pyr::Plaid::Concerns::Model
  module Identity
    extend ActiveSupport::Concern

    included do
      #self.table_name = "pyr_plaid_identities"

      has_many :addresses #, class_name: "Pyr::Plaid::Identity::Address"
      has_many :emails #, class_name: "Pyr::Plaid::Identity::Emails"
      has_many :names #, class_name: "Pyr::Plaid::Identity::Names"
      has_many :phone_numbers #, class_name: "Pyr::Plaid::Identity::PhoneNumbers"

      belongs_to :account #, class_name: "Pyr::Plaid::Account"
    end

    module ClassMethods
    end

  end
end

