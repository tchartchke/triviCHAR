class User < ApplicationRecord
  has_many :quizzes, :foreign_key => 'host_id'

  has_many :games, :foreign_key => 'player_id'

  has_many :comments, :foreign_key => 'player_id'
  has_many :commented_quizzes, through: :comments, :class_name => 'Quiz', :source => :quiz


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :registerable,
        #  :recoverable,
         :rememberable, 
         :validatable,
         :omniauthable, omniauth_providers: %i[facebook]

  #  https://github.com/heartcombo/devise/wiki/OmniAuth:-Overview
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      # user.name = auth.info.name   # assuming the user model has a name
      # user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails, 
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end
        
  def quiz_master?
    !quizzes.empty?
  end
end
