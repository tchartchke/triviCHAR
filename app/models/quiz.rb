class Quiz < ApplicationRecord
  belongs_to :host, :class_name => 'User'
  has_many :rounds

  #TODO: propgate destroy
  validates :title, presence: true #needs to have a name
end
