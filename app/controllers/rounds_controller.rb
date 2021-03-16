class RoundsController < ApplicationController
  before_action :authenticate_user!

  def create
    @round = Round.new(round_params)
    if @round.save
      redirect_to quiz_path(@round.quiz)
    else
      redirect_to quiz_path(@round.quiz) #will have to put error
    end
  end

  def edit
    @round = Round.find(params[:id])
  end

  def update
    @round = Round.find(params[:id])
    if @round.update(round_params)
      redirect_to edit_round_path
    else
      redirect_to edit_round_path #show error
    end
  end

  private

  def round_params
    params.require(:round).permit(:subject, :quiz_id)
  end
end
