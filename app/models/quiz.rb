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
end
