require 'sinatra/base'
require_relative 'lib/board'
require_relative 'lib/cell'
require_relative 'lib/player'
require_relative 'lib/game'

class BattleShips < Sinatra::Base

    game = Game.new

    enable :sessions

   set :views, Proc.new { File.join(root, ".", "views")}

  get '/' do
    @name = "Please tell me your name!"
    erb :index
  end

  post '/' do
    if params[:player_name].empty?
      @name = "Please tell me your name!"
      erb :index
    else
      player = Player.new(params[:player_name])
      session[:me] = player
      game.add_player(player)
      @name = session[:me].name
      erb :board
    end
  end

  get '/board' do
    erb :board
  end

  post '/board' do
    @board_size = params[:board_size].to_i
    @board = Board.new({size: @board_size, content: Cell})
    puts @board.inspect

    erb :board
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
