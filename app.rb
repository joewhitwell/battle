require 'sinatra/base'

class Battle < Sinatra::Base
  # p 1
  get '/' do
    # p 2
   erb :index
  #  p 3
  end

  post '/fight' do
    # p 4
    @P1 = params[:Player1]
    # p 5
    @P2 = params[:Player2]
    # p 6
    erb :fight
    # p 7
  end



run! if app_file == $0
end
