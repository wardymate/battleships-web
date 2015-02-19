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
    @name = "Please provide name and board size"
    erb :index
  end

  post '/' do
    if params[:player_name].empty? || params[:board_size].empty?
      @name = "Please provide name and board size"
      erb :index
    else
      player = Player.new(params[:player_name])
      session[:me] = player
      game.add_player(player)
      @name = session[:me].name
      board_size = params[:board_size].to_i
      board = Board.new({size: board_size, content: Cell})
      session[:board] = board
      @grid = board.grid
      @target = 'This is your first shot'
      erb :board
    end
  end

  get '/board' do
    board = session[:board]
    @name = session[:me].name
    @grid = board.grid
    @target = ''
    erb :board
  end

  post '/board' do
    @target = params[:cell_shot]
    @name = session[:me].name
    board = session[:board]
    @grid = board.grid

    erb :board
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
