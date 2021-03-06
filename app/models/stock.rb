class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: ENV["API_KEY"],
      endpoint:'https://sandbox.iexapis.com/v1')
    return client.price(ticker_symbol)
  end
end
