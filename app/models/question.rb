class Question < ApplicationRecord
  belongs_to :round
  has_one :answer

  validates :question, presence: true
end
