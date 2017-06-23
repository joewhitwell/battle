require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
  erb :index
  end


  post '/fight' do
    session['Player1'] = params[:Player1]
    session['Player2'] = params[:Player2]
    redirect '/fight'
  end

  get '/fight' do
    @P1 = session[:Player1]
    @P2 = session[:Player2]
    erb :fight
  end


run! if app_file == $0
end
