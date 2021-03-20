class GameRound < ApplicationRecord
  belongs_to :game
  belongs_to :round
  has_many :player_answers

  accepts_nested_attributes_for :player_answers

  def subject
    round.subject
  end

  def last_round?
    game.rounds_submitted == game.game_rounds.count
  end

  def submit
    update(status: 'closed')
    game.submit if last_round?
  end

end
