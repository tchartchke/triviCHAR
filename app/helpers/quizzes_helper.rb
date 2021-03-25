module QuizzesHelper
  def quiz_name(quiz)
    quiz.title
  end

  def quiz_host(quiz)
    quiz.host.email
  end

  def num_rounds(quiz)
    quiz.rounds.count
  end

  def num_questions(quiz)
    quiz.num_questions
  end

  def is_game?(quiz)
    #TODO: finds if the id of this quiz matches with the games of the current player
  end

  def view_status(quiz)
    quiz.status
  end

  def has_comments?(quiz)
    !quiz.comments.empty?
  end
end
