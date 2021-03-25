class Round < ApplicationRecord
  belongs_to :quiz
  has_many :questions
  has_many :answers, through: :questions

  #TODO: propgate destroy
  validates :subject, presence: true

  def display
    subject
  end

  def num_questions
    questions.count
  end
  
  def num_answers
    answers.count
  end

  def host
    quiz.host
  end
end
