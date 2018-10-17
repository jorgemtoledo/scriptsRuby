require 'nokogiri'
require 'net/http'
 
https = Net::HTTP.new('onebitcode.com', 443)
# https = Net::HTTP.new('guiacontato.com.br', 443)
# para fazer chamadas https
https.use_ssl = true
 
response = https.get("/")
 
doc = Nokogiri::HTML(response.body)
 
h1 = doc.at('h1')
# h1 = doc.at('title')
 
puts h1.content