require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/95/avernes.html"))

mail_array = page.xpath('//tbody/tr/td[contains(text(),"@")]').map{ |element| element.text }

puts mail_array
