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
end
