# netouri.rb
require 'open-uri'
f = open('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html')
puts "Full html scan: %d" % f.readlines.join.scan(/\bthe\b/).count
