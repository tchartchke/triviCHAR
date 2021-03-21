class Question < ApplicationRecord
  belongs_to :round
  
  has_one :answer, dependent: :destroy

  accepts_nested_attributes_for :answer, reject_if: proc { |attributes| attributes['answer'].blank? }

  #TODO: propgate destroy
  validates :question, presence: true
end