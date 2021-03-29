class GamesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @games = current_user.games.where(status == 'complete' || status == 'incomplete')
  end

  def show
    @game = Game.find(params[:id])
    can_view(@game, 'player')
    @comment = Comment.new
  end

  def create
    @game = Game.new( game_params )
    if @game.save
      redirect_to game_path(@game)
    else
      render :no_game
    end
  end

  def update
    @game = Game.find(params[:id])
    can_view(@game, 'player')
    @game.start if params[:init]
    @game.update(game_params)
    render :show
  end

  private

  def game_params
    params.require(:game).permit( :quiz_id, :player_id )
  end
end
