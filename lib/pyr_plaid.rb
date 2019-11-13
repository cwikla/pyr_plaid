require 'plaid'
require 'pyr/plaid/engine' # without this you won't get migration installations
require 'pyr/plaid/version'

require 'pyr/plaid/concerns/models/account'
require 'pyr/plaid/concerns/models/balance'
require 'pyr/plaid/concerns/models/product'
require 'pyr/plaid/concerns/models/webhook_status'

require 'pyr/plaid/concerns/models/identity/address'
require 'pyr/plaid/concerns/models/identity/phone_number'
require 'pyr/plaid/concerns/models/identity/email'
require 'pyr/plaid/concerns/models/identity/name'
require 'pyr/plaid/concerns/models/identity'

require 'pyr/plaid/concerns/models/item/status'
require 'pyr/plaid/concerns/models/item/status/transaction'
require 'pyr/plaid/concerns/models/item/get_response'

require 'pyr/plaid/concerns/models/item'
require 'pyr/plaid/concerns/models/item_product'

module Pyr
  module Plaid
    def self.config(&block)
      yield Engine.config if block
      Engine.config
    end
  end
end

