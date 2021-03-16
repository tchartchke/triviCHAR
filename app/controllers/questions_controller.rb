class QuestionsController < ApplicationController

  def create
    @question = Question.new(question_params)
    @question.save
    p @question.errors
    redirect_to edit_round_path(question_params[:round_id])
  end

  def edit
    @round = Round.find(params[:round_id])
    @question = Question.find(params[:id])
    @question.build_answer if @question.answer.nil?
  end

  def update
    @question = Question.find(params[:id])
    # raise 
    if @question.update(question_params)
      @question.save
    end
    redirect_to edit_round_path(question_params[:round_id]) #, status 200
  end

  private

  def question_params
    params.require(:question).permit( :question, :round_id, answer_attributes: [ :answer ] )
  end
end