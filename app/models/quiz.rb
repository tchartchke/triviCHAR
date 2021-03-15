class Quiz < ApplicationRecord
  belongs_to :host, :class_name => 'User'
  has_many :rounds

  validates :title, presence: true #needs to have a name
end
