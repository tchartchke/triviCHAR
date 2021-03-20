class QuizzesController < ApplicationController
  before_action :authenticate_user!
  # TODO: Create before_action to check that current user is host of quiz for only [show, edit, update, delete]

  def index
    @quizzes = current_user.quizzes
  end
  
  def show
    @quiz = Quiz.find(params[:id])
    @round = Round.new(quiz: @quiz)
  end

  def new
    @quiz = Quiz.new(host: current_user)
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      redirect_to quiz_path(@quiz)
    else
      render :new
    end
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def update
    @quiz = Quiz.find(params[:id])
    if @quiz.update(quiz_params)
      redirect_to quiz_path(@quiz)
    else
      render :edit
    end
  end

  def destroy
    #Ask for verification
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    redirect_to quizzes_path
  end

  def play
    #list of playable quizzes. (creates a game)
    #can also be in scope of specific user if you like a certain user's games
    @quizzes = Quiz.all
    # @game = Game.new(player_id: current_user.id)
  end

  private

  def quiz_params
    params.require(:quiz).permit(:title, :host_id)
  end 
end
