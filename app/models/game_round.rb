class GameRound < ApplicationRecord
  belongs_to :game
  has_many :player_answers

  accepts_nested_attributes_for :player_answers

end
