module QuestionsHelper
  def question(question)
    question.question
  end

  def answer(question)
    question.answer ? question.answer.answer : ""
  end

  def round(question)
    question.round
  end
end
