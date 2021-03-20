class PlayerAnswer < ApplicationRecord
  belongs_to :game_round
  belongs_to :question
end