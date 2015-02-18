require 'sinatra/base'

class BattleShips < Sinatra::Base

   set :views, Proc.new { File.join(root, "..", "views")}

  get '/' do
    @name = "Please tell me your name!"
    erb :index
  end

  post '/' do
    @name = params[:player_name]
    if params[:player_name].empty?
      @name = "Please tell me your name!"
      erb :index
    else
      erb :board
    end
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
