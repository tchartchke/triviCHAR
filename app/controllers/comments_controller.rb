class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    @comment.player = current_user
    @game = Game.find_by(player: current_user, quiz_id: comment_params[:quiz_id])
    if @comment.save
      redirect_to game_path(@game)
    else
      render '/games/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit( :quiz_id, :player_id, :comment )
  end
end