require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
  	@name = params[:name]
    erb :index
  end


  get '/game' do
  	erb :game
  end

  get '/win_or_lose' do
  	erb :win_or_lose
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
