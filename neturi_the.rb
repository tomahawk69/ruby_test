# neturi1.rb
# made with ruby 2.0

require 'net/http'
uri = URI('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html')
res = Net::HTTP.get_response(uri)
if res.code == '200' then
	puts "Full html scan: %d" % Net::HTTP.get(uri).scan(/\bthe\b/).count
end