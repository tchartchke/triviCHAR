class QuestionsController < ApplicationController

  def create
    @question = Question.new(question_params)
    @question.save
    redirect_to edit_round_path(question_params[:round_id])
  end

  def edit
    @round = Round.find(params[:round_id])
    @question = Question.find(params[:id])
    @question.build_answer if @question.answer.nil?
  end

  def update
    @question = Question.find(params[:id])
    @question.question = question_params[:question]
    if question_params[:answer_attributes][:answer].blank?
      @question.answer&.destroy
    else
      @question.answer_attributes = question_params[:answer_attributes]
    end
    @question.save
    redirect_to edit_round_path(question_params[:round_id]) #, status 200
  end

  def destroy
    @question = Question.find(params[:id])
    @question.answer&.destroy
    @question.destroy
    redirect_to edit_round_path(params[:round_id])
  end

  private

  def question_params
    params.require(:question).permit( :question, :round_id, answer_attributes: [ :answer ] )
  end
end