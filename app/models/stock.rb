class Stock < ApplicationRecord

  def self.new_lookup(ticket_symbol)
    client = IEX::Api::Client.new(publishable_token: Rails.application.credentials[:iex_client][:publishable_token],
                                  secret_token: Rails.application.credentials[:iex_client][:secret_toke],
                                  endpoint: 'https://sandbox.iexapis.com/v1')
    client.price(ticket_symbol)
  end
end
