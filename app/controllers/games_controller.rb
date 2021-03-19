class GamesController < ApplicationController
  def index

  end

  def show

  end

  def create
    raise params.inspect
    game_params[:quiz_id] = params[:format]
    @game = Game.new( game_params[:quiz_id] )
  end

  private

  def game_params
    params.require(:game).permit( :quiz_id, :player_id )
  end
end
