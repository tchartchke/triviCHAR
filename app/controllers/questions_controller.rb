class QuestionsController < ApplicationController

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
    params.require(:question).permit( :question, :round_id, answer_attributes: [ :answer ] )
  end
end