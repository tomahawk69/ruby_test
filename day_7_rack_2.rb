require 'rack'

my_humble_rack_proc = lambda { |env| [200, {'Content-type' => 'text/plain'}, ["Hello, unknown user. Now is #{Time.now}"]]}

Rack::Server.new({:app=>my_humble_rack_proc, :server=>'webrick'}).start