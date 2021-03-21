module PlayerAnswersHelper
  def my_answer(player_answer)
    player_answer.answer
  end
  
  def display_question(player_answer)
    player_answer.question.question
  end

  def display_solution(player_answer)
    player_answer.question.answer.answer
  end
  
end