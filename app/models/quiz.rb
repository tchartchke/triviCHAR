class Quiz < ApplicationRecord
  belongs_to :host, :class_name => 'User'
  has_many :rounds

  has_many :games

  #TODO: propgate destroy
  validates :title, presence: true #needs to have a name

  def display
    title
  end

  def num_rounds
    rounds.count
  end

  def num_questions
    rounds.collect{ |round| round.num_questions }.reduce(:+)
  end

  def num_answers
    rounds.collect{ |round| round.num_answers }.reduce(:+)
  end

  def publish
    update(status: 'published') if self.complete?
  end

  def complete?
    if rounds.count.positive?
      rounds.each do |round|
        if round.questions.count.positive?
          round.questions.each do |question|
            return true unless question.answer.nil?
          end
        end
      end
    end
    false
  end
end
