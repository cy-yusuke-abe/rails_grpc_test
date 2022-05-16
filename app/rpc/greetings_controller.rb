# frozen_string_literal: true

module Demo
  class GreetingsController < ::Gruf::Controllers::Base
    bind ::Rpc::Greetings::Service

    def greeting
      puts request.message
      Rpc::GreetResp.new(id: 1, message: "#{request.message.message}? Ah,OkOk.")
    end
  end


end