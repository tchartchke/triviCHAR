class Comment < ApplicationRecord
  belongs_to :player, :class_name => 'User'
  belongs_to :quiz

  validates :comment, presence: true
  validates :player, presence: true
  validates :quiz, presence: true
  validate :player_has_completed_game

  def host 
    quiz.host
  end

  private

  def player_has_completed_game
    g = player.games.find{ |game| game.quiz == quiz}
    if g.nil?
      errors.add(:player, 'has not played this game')
    elsif g.status != 'complete'
      errors.add(:player, 'can only comment on completed games')
    end
  end
end