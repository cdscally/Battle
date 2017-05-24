require 'sinatra/base'

class Battle < Sinatra::Base

get '/' do
  "Welcome to the Thunderdome!\nTesting Infrastructure Working!"
end

run! if app_file==$0
end
