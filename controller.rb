require ('sinatra')
require ('sinatra/contrib/all')
require ('pry')
require_relative('./models/game.rb')

get '/play/:player1_choice/:player2_choice' do
  game = Game.new(params[:player1_choice], params[:player2_choice])
  @game_result = game.play()
  erb(:game_result)
end

get '/' do
  erb(:home)
end
