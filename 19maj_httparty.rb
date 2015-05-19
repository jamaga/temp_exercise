require 'httparty'

response = HTTParty.get('http://www.wp.pl/')
p response
