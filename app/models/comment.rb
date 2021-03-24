class Comment < ApplicationRecord
  belongs_to :player, :class_name => 'User'
  belongs_to :quiz
end
