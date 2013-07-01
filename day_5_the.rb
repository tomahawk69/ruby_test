# day_5_the.rb
require 'open-uri'
require 'net/http'
require 'nokogiri'

url = 'http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html'
regvar = /\bthe\b/

puts '--- net/http ver.1'
url = URI.parse(url)
Net::HTTP.start(url.host, url.port) do |http|
	req = Net::HTTP::Get.new(url.path)
	puts "Full html scan: %d" % http.request(req).body.scan(regvar).count
end

puts '--- net/http ver.2'
uri = URI(url)
res = Net::HTTP.get_response(uri)
if res.code == '200' then
	puts "Full html scan: %d" % Net::HTTP.get(uri).scan(regvar).count
else
	puts "Error response: #{res.code}"
end

puts '--- openuri'
f = open(url)
puts "Full html scan: %d" % f.readlines.join.scan(regvar).count

puts '--- nokogiri'
doc = Nokogiri::HTML(open(url))
puts "Body text scan: %d, full html scan: %d" % [doc.content.scan(regvar).count, doc.to_s.scan(regvar).count]
