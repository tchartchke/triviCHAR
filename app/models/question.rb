class Question < ApplicationRecord
  belongs_to :round
  has_one :answer, dependent: :destroy

  accepts_nested_attributes_for :answer#, allow_destroy: true


  #TODO: propgate destroy
  validates :question, presence: true
end