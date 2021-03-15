class QuizzesController < ApplicationController
  before_action :authenticate_user!
  # TODO: Create before_action to check that current user is host of quiz for only [show, edit, update, delete]

  def show
    @quiz = Quiz.find(params[:id])
  end

  def index
    @quizzes = current_user.quizzes
  end

  def new
    @quiz = Quiz.new(host: current_user)
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      redirect_to quiz_path(@quiz)
    else
      redirect_to new_quiz_path
    end
  end

  private

  def quiz_params
    params.require(:quiz).permit(:title, :host_id)
  end 
end
