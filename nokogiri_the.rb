# nokogiri_demo2.rb
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html"))

puts "Body text scan: %d, full html scan: %d" % [doc.xpath("//body").first.content.scan(/\bthe\b/).count, doc.to_s.scan(/\bthe\b/).count]
