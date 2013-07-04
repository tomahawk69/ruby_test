require 'rack'

my_humble_rack_proc = lambda { |env| [200, {'Content-type' => 'text/plain'}, ["Hello, unknown user. Now is #{Time.now}"]]}

Rack::Handler::WEBrick.run my_humble_rack_proc