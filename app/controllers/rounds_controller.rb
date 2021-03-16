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
    @question = Question.new(round_id: params[:id])
  end

  def update
    @round = Round.find(params[:id])
    @round.update(round_params)
    redirect_to edit_round_path
    #Check if render vs redirect and how to handle if update fails. remember to show erros in view
  end

  def destroy
    #Ask for verification
    round = Round.find(params[:id])
    quiz = round.quiz
    round.destroy
    redirect_to quiz_path(quiz)
  end

  private

  def round_params
    params.require(:round).permit(:subject, :quiz_id)
  end
end
