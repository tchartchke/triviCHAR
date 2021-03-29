class Game < ApplicationRecord
  belongs_to :quiz
  belongs_to :player, :class_name => 'User'

  has_many :game_rounds
  has_many :player_answers, through: :game_rounds

  validates :quiz_id, presence: true
  validates :player_id, presence: true
  validate :quiz_is_public

  def start
    if status == 'new'
      quiz = Quiz.find(quiz_id)
      quiz.rounds.each do |round|
        game_rounds << GameRound.new(game_id: id, round_id: round.id)
        round.questions.each do |question|
          game_rounds.last.player_answers << PlayerAnswer.new(question_id: question.id)
        end
      end
      update(status: 'incomplete')
      save
    else
      'Game already started'
    end
  end

  def restart
    game_rounds.destroy_all
    player_answers.destroy_all
    update(status: 'new')
  end

  def submit
    case status
    when 'new'
      'Game has not been started yet'
    when 'incomplete'
      update(status: 'complete')
    else
      'Game already complete'
    end
  end

  def first_open_round
    game_rounds.find_by(status: 'open')
  end

  def rounds_submitted
    game_rounds.count { |r| r.status == 'closed' }
  end

  private
  
  def quiz_is_public
    if quiz.status != 'published'
      errors.add(:quiz, 'is not public. Cannot create game')
    end
  end

end
