class GameRoundsController < ApplicationController
  def update
    @game_round = GameRound.find(params[:id])
    @game_round.submit if params[:submit_round]
    @game_round.update(game_round_params)
    redirect_to game_path(@game_round.game)
  end

  private

  def game_round_params
    params.require(:game_round).permit( :quiz_id, :player_id, player_answers_attributes: [ :answer, :id] )
  end

  
end