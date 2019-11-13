module Pyr
  module Plaid
    class WebhookStatus < ApplicationRecord
      include Pyr::Plaid::Concerns::Model::WebhookStatus
    end
  end
end

