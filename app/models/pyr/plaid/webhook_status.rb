module Pyr
  module Plaid
    class WebhookStatus < ApplicationRecord
      include Pyr::Plaid::Concerns::Models::WebhookStatus
    end
  end
end

