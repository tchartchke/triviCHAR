class Game < ApplicationRecord
  belongs_to :quiz
  belongs_to :player, :class_name => 'User'

  validates :quiz_id, presence: true
  validates :player_id, presence: true
end
