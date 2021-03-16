class QuestionsController < ApplicationController
  # def new
  #   @round = Round.find(params[:round_id])
  #   @question = Question.new(round_id: params[:round_id])
  # end

  def create
    @question = Question.new(question_params)
    @question.save
    redirect_to edit_round_path(question_params[:round_id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update

  end

  private

  def question_params
    params.require(:question).permit(:question, :round_id)
  end
end
