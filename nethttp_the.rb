# nethttp1.rb
require 'net/http'

url = URI.parse('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html')
Net::HTTP.start(url.host, url.port) do |http|
	req = Net::HTTP::Get.new(url.path)
	puts "Full html scan: %d" % http.request(req).body.scan(/\bthe\b/).count
end