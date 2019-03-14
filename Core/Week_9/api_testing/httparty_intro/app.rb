require 'httparty'

response = HTTParty.get('http://www.google.com')

puts response.headers["date"]
puts response.headers.inspect
puts response.code
puts response.message
