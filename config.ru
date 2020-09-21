require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
    "Hello, Phusion Passenger #{PhusionPassenger::VERSION_STRING}!"
    puts headers
  end
end

run MyApp
