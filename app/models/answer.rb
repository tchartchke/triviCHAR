class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :round
end
