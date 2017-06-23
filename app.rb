require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
  erb :index
  end

  post '/fight' do
    @P1 = params['Player1']
    @P2 = params['Player2']
    erb :fight
  end

  get '/confirmation' do
    erb :confirmation
  end

run! if app_file == $0
end
