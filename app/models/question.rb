class Question < ApplicationRecord
  belongs_to :round
  has_many :answers
  accepts_nested_attributes_for :answers

  validates :question, presence: true
end
