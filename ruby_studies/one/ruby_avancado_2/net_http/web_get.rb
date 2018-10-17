require 'net/http'
 
# example = Net::HTTP.get('example.com', '/index.html') 
# File.open('example.html', 'w') do |line|
#  line.puts(example)
# end

example = Net::HTTP.get('www.google.com', '/') 
File.open('example.html', 'w') do |line|
 line.puts(example)
end