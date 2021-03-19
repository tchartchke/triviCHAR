class GamesController < ApplicationController
  def index

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
    @game = Game.find(params[:id])
    @game.update(game_params)
    render :show
  end

  private

  def game_params
    params.require(:game).permit( :quiz_id, :player_id, :status )
  end
end
