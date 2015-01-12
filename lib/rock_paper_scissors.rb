  require 'sinatra/base'
  require_relative './game.rb'
  require_relative './player.rb'
  require_relative './computer.rb'
  require_relative './rock.rb'
  require_relative './paper.rb'
  require_relative './scissors.rb'

class RockPaperScissors < Sinatra::Base
  
  set :public_dir, Proc.new{File.join(root, '..', "public")}
  set :public_folder, 'public'  

  GAME = Game.new

  get '/' do
  	@name = params[:name]
    erb :index
  end

	get '/game' do
    GAME.add_player(Player, Computer)
  	erb :game
  end

  post '/game' do
  	@rock = params[:rock] ; @paper = params[:paper] ; @scissors = params[:scissors]
    @player_chosen = [@rock, @paper, @scissors].compact
    GAME.player2.make_a_choice(GAME.random_option)
    GAME.player1.make_choice(eval(@player_chosen[0]))
    redirect '/draw' if GAME.outcome == "Draw!"
    redirect '/win' if GAME.outcome.class == Player
    redirect '/lose' if GAME.outcome.class == Computer
  	erb :game
  end

  get '/win' do
    @computers_choice = GAME.show_computers_choice
  	erb :win
  end

  get '/lose' do
    @computers_choice = GAME.show_computers_choice
  	erb :lose
  end

  get '/draw' do
    @computers_choice = GAME.show_computers_choice
  	erb :draw
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
