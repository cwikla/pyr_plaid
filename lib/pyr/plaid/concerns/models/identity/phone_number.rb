module Pyr::Plaid::Concerns::Model
  module Identity
    module PhoneNumber
      extend ActiveSupport::Concern
  
      included do
        #self.table_name = "pyr_plaid_identity_phone_numbers"
  
        belongs_to :identity #, class_name: "Pyr::Plaid::Account"
      end

      module ClassMethods
      end
    end
  end
end

