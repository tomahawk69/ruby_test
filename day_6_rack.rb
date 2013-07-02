# day_6_rack.rb

app = lambda do |env| 
	response = 200
	headers = {"content-type" => "text/html"}
	body = ["Command line argument you typed was: " + (if env then env else "" end)]
	[response, headers, body]
end

puts app.call (ARGV.join('; '))