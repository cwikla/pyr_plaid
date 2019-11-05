require 'plaid'
require 'pyr/plaid/engine' # without this you won't get migration installations
require 'pyr/plaid/version'

module Pyr
  module Plaid

    def self.config(&block)
      yield Engine.config if block
      Engine.config
    end
  end
end

