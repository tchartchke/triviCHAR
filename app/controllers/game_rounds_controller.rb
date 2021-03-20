class GameRoundsController < ApplicationController
  def update
    
    # raise GameRound.find(params[:id]).inspect

  
    @game_round = GameRound.find(params[:id])
  #   raise
    if params[:submit_round]
      @game_round.update(game_round_params)
      @game_round.submit
      @game_round.save
    else
      @game_round.update(game_round_params)
    end
    redirect_to game_path(@game_round.game)
  end

  private

  def game_round_params
    params.require(:game_round).permit( :quiz_id, :player_id, player_answers_attributes: [:answer] )
  end
end