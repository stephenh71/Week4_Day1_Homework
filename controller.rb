require 'sinatra'
require 'sinatra/contrib/all'

require_relative './models/game'
also_reload('./models/*')


get '/:player1/:player2' do
  game = Game.new(params[:player1], params[:player2])
  @game = game.play()
  erb(:result)
end

get '/rules' do
  erb(:rules)
end
