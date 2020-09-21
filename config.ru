require 'sinatra/base'
require 'json'

class MyApp < Sinatra::Base
  get '/' do
    puts JSON.pretty_generate(request.env)
    "Hello, Phusion Passenger #{PhusionPassenger::VERSION_STRING}!"
  end
end

run MyApp
