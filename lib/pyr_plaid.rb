require 'plaid'
require 'pyr/plaid/engine' # without this you won't get migration installations
require 'pyr/plaid/version'

require 'pyr/plaid/concerns/models/account.rb'
require 'pyr/plaid/concerns/models/item.rb'
require 'pyr/plaid/concerns/models/item_product.rb'
require 'pyr/plaid/concerns/models/product.rb'
require 'pyr/plaid/concerns/models/webhook_status.rb'

module Pyr
  module Plaid
    def self.config(&block)
      yield Engine.config if block
      Engine.config
    end
  end
end

