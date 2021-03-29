class QuestionsController < ApplicationController

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to edit_round_path(question_params[:round_id])
    else
      @round = Round.find(params[:round_id])
      @question.build_answer if @question.answer.nil?
      render :action => '../rounds/edit'
    end
  end

  def edit
    @round = Round.find(params[:round_id])
    redirect_to user_root_path unless @round.host == current_user
    @question = Question.find(params[:id])
    @question.build_answer if @question.answer.nil?
  end

  def update
    @question = Question.find(params[:id])
    if question_params[:question].blank?
      @question.update(question_params)
      @round = Round.find(params[:round_id])
      render :edit
    else
      @question.question = question_params[:question]
      if question_params[:answer_attributes][:answer].blank?
        @question.answer&.destroy
      else
        @question.answer_attributes = question_params[:answer_attributes]
      end
      @question.save
      redirect_to edit_round_path(question_params[:round_id])
    end
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

  def object_host
    unless current_user == Question.find(params[:id]).host
      redirect_to user_root_path
    end
  end

end