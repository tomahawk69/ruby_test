require 'rack'

def my_second_proc(env)
 [200, {'Content-type' => 'text/plain'}, ["Hello, unknown user. Now is #{Time.now}"]]
end

Rack::Handler::WEBrick.run method(:my_second_proc)