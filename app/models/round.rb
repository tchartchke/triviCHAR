class Round < ApplicationRecord
  belongs_to :quiz
  has_many :questions
  has_many :answers, through: :questions

  #TODO: propgate destroy
  validates :subject, presence: true

  def display
    subject
  end
end
