class RoundsController < ApplicationController
  before_action :authenticate_user!

  def create
    @round = Round.new(round_params)
    if @round.save
      redirect_to quiz_path(@round.quiz)
    else
      @quiz = Quiz.find(round_params[:quiz_id])
      render 'quizzes/show'
    end
  end

  def edit
    @round = Round.find(params[:id])
    @question = Question.new(round_id: params[:id])
    @question.build_answer
  end

  def update
    @round = Round.find(params[:id])
    if @round.update(round_params)
      redirect_to edit_round_path
    else
      @question = Question.new(round_id: params[:id])
      @question.build_answer
      render :edit
    end
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
