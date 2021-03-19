class GameRound < ApplicationRecord
  belongs_to :game
  has_many :player_answers
end
