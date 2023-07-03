class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
# Grab News
    @url = 'https://min-api.cryptocompare.com/data/v2/news/?lang=EN'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @news = JSON.parse(@response)

# Grab Price Data
    @prices_url = 'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC&tsyms=USD'
    @prices_uri = URI(@url)
    @prices_response = Net::HTTP.get(@uri)
    @prices = JSON.parse(@response)
  end


  def prices
  end

end
