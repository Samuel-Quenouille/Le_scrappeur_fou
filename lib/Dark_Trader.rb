require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

#Array noms des cryptos
crypto_array = page.xpath('//tbody/tr/td/div/a[@class="cmc-table__column-name--name cmc-link"]').map{ |element| element.text }

#Array prix des cryptos
price_array = page.xpath('//tbody/tr/td/div/a[@class="cmc-link"]').map{ |element_2| element_2.text}

#On fusione les deux arrays
hash = crypto_array.zip(price_array).to_h
print hash










