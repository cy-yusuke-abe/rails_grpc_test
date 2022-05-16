require 'gruf'
require './app/rpc/app/protos/Greetings_services_pb.rb'

class GreetingsControllerTest < ActiveSupport::TestCase
  def setup
    super
    @client = Gruf::Client.new(
      service: ::Rpc::Greetings,
      options: { hostname: 'localhost:9003',},
      )
  end

  test "greeting" do
    res = @client.call(:Greeting, id: 1, message: 'Hello').message
    assert_equal(res.message, 'Hello? Ah,OkOk.')
  end

end