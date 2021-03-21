class GamesController < ApplicationController
  def index
    @games = current_user.games.where(status == 'complete' || status == 'incomplete')
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    # raise params.inspect
    @game = Game.new( game_params )
    # TODO: eventually add things to check if game is public
    if @game.save
      redirect_to game_path(@game)
    else
      render :no_game
    end
  end

  def update
    # raise
    @game = Game.find(params[:id])
    if params[:init]
      @game.start
    end
    @game.update(game_params)
    render :show
  end

  private

  def game_params
    params.require(:game).permit( :quiz_id, :player_id )
  end
end
