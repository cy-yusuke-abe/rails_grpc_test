require 'gruf'
require './app/rpc/app/protos/Greetings_services_pb'


Gruf.configure do |c|
  c.server_binding_url = 'localhost:9003'
  c.backtrace_on_error = true
  c.use_exception_message = true
end