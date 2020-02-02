class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
        publishable_token: 'YOUR_API_KEY',
        endpoint: 'https://sandbox.iexapis.com/v1')
    client.price(ticker_symbol)
  end
end
