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

  end

  def update
    
  end

  private

  def round_params
    params.require(:round).permit(:subject, :quiz_id)
  end
end
