class Question < ApplicationRecord
  belongs_to :round
  
  has_one :answer, dependent: :destroy

  accepts_nested_attributes_for :answer, reject_if: proc { |attributes| attributes['answer'].blank? }

  validates :question, presence: true

  def host
    round.host
  end
end