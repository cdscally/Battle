require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  run! if app_file == $0

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @name1 = $player_1.name
    @name2 = $player_2.name
    erb :play
  end

  get '/attack' do
    @name1 = $player_1
    @name2 = $player_2
    @name1.attack(@name2)
    erb :attack
    # redirect '/play'
  end

end
