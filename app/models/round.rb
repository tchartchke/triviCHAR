class Round < ApplicationRecord
  belongs_to :quiz
  has_many :questions
  has_many :answers, through: :questions

  validates :subject, presence: true
end
