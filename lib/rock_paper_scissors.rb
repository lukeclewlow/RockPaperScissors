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
  	@rock = params[:rock] ; @paper = params[:paper]
  	redirect '/win' if @rock ; redirect '/lose' if @paper
  	erb :game
  end

  get '/win' do
  	erb :win
  end

  get '/lose' do
  	erb :lose
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
