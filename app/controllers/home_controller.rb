class HomeController < ApplicationController
  def index
    require 'json'
    require 'open-uri'
    @coins = JSON.load(open("https://api.coincap.io/v2/assets/?limit=12"))
    @array_data = @coins["data"]
    @coin_signs = ["BTC", "ETH", "XRP", "BCH", "LTC", "EOS", "BNB", "BSV", "USDT", "XLM", ]
  end
end
