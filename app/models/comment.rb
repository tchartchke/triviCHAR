class Comment < ApplicationRecord
  belongs_to :player, :class_name => 'User'
  belongs_to :quiz

  validates :comment, presence: true
end
