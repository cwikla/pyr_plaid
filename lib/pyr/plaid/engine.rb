module Pyr
  module Plaid
    class Engine < ::Rails::Engine
      isolate_namespace Pyr::Plaid
      #config.pyr_plaid_precision = :half_mile
    end
    module Concerns
    end
  end
end
