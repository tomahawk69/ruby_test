require 'rack'

my_humble_rack_proc = lambda { |env| [200, {'Content-type' => 'text/plain'}, ["Command line argument you typed was: %s" % ARGV[0]]]}

Rack::Server.new({:app=>my_humble_rack_proc, :server=>'webrick'}).start