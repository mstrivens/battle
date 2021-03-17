require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

get '/' do
  erb(:index)
end

post '/names' do
  $player_1 = Player.new(params[:player_1])
  $player_2 = Player.new(params[:player_2])
  redirect '/play'
end

get '/play' do
  @player_1 = $player_1.name
  @player_2 = $player_2.name
  @player_1_hp = $player_1.hit_points
  @player_2_hp = $player_2.hit_points
  erb(:play)
end

get '/attack' do
  @player_1 = $player_1.name
  @player_2 = $player_2.name
  @player_2_hp = ($player_2.hit_points - 10)
  erb(:attack)
end


  run! if app_file == $0
end


# reached the step below:

# Implementing Hit Points

# need to write tests for player, for attack method and reduce_player_2_hp
# method as defined in user stories
# extract the damage dealing and attack aspect into Player class
