class Quiz < ApplicationRecord
  belongs_to :host, :class_name => 'User'
  has_many :rounds

end
