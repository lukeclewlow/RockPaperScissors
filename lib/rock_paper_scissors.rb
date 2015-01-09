require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
  	@name = params[:name]
    erb :index
  end

	get '/game' do
  	erb :game
  end

  post '/game' do
  	choices = ["Rock", "Paper", "Scissors"]
  	@choice = choices.sample
  	@rock = params[:rock] ; @paper = params[:paper] ; @scissors = params[:scissors]
  	@player_chosen = create_player_choice(@rock, @paper, @scissors)
  	redirect '/draw' if @player_chosen[0] == @choice 
  	calculate(@player_chosen, @choice)
  	erb :game
  end

  get '/win' do
  	erb :win
  end

  get '/lose' do
  	erb :lose
  end

  get '/draw' do
  	erb :draw
  end

  def calculate(p, c)
  	redirect '/lose' if p[0] == "Rock" && c == "Paper"
  	redirect '/lose' if p[0] == "Paper" && c == "Scissors"
  	redirect '/lose' if p[0] == "Scissors" && c == "Rock"
  	redirect '/win'  if p[0] == "Rock" && c == "Scissors"
  	redirect '/win'  if p[0] == "Paper" && c == "Rock"
  	redirect '/win'  if p[0] == "Scissors" && c == "Paper"
  	redirect '/draw' if p[0] == c
  end


  def create_player_choice(r, p, s)
  	@player_choice = r, p, s
  	@player_choice.compact
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
