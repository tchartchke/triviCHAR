class Answer < ApplicationRecord
  belongs_to :question
  validates :question, presence: true

  #TODO: propgate destroy
end



