require 'cryptocompare'

puts "hi"

puts Cryptocompare::PriceHistorical.find('ETH', 'USD')

puts "your handler function goes here..."
