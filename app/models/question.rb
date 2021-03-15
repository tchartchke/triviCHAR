class Question < ApplicationRecord
  belongs_to :round
  has_one :answer
end
