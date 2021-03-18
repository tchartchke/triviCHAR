class Game < ApplicationRecord
  belongs_to :quiz
  belongs_to :player, :class_name => 'User'
end
