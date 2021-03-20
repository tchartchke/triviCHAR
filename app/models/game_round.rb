class GameRound < ApplicationRecord
  belongs_to :game
  belongs_to :round
  has_many :player_answers

  accepts_nested_attributes_for :player_answers

  def subject
    round.subject
  end

  def submit
    update(status: 'closed')
  end

end
