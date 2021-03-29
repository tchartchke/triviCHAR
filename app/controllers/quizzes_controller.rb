class QuizzesController < ApplicationController
  before_action :authenticate_user!


  def index
    @quizzes = current_user.quizzes
  end
  
  def show
    @quiz = Quiz.find(params[:id])
    redirect_to user_root_path unless @quiz.host == current_user
    redirect_to published_path(@quiz) if @quiz.status == 'published'
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
    redirect_to user_root_path unless @quiz.host == current_user
  end

  def update
    @quiz = Quiz.find(params[:id])
    redirect_to user_root_path unless @quiz.host == current_user
    if @quiz.update(quiz_params)
      redirect_to quiz_path(@quiz)
    else
      render :edit
    end
  end

  def destroy
    @quiz = Quiz.find(params[:id])
    redirect_to user_root_path unless @quiz.host == current_user
    @quiz.destroy
    redirect_to quizzes_path
  end

  def play
    case params[:sort]
    when 'title'
      @quizzes = Quiz.sort_by_title.published
    else
      @quizzes = Quiz.published
    end
  end

  def published
    @quiz = Quiz.find(params[:id])
    redirect_to user_root_path unless @quiz.host == current_user
  end

  def publish
    @quiz = Quiz.find(params[:id])
    redirect_to user_root_path unless @quiz.host == current_user
    if @quiz.publish
      redirect_to quizzes_path
    else
      @round = Round.new(quiz: @quiz)
      @msg = 'Unable to publish quiz. Please verify all rounds and questions have answers.'
      render :show
    end
  end

  private

  def quiz_params
    params.require(:quiz).permit(:title, :host_id)
  end 
end
