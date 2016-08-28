class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :skills, through: :skill_users
  has_many :skill_users

  has_many :messages, through: :message_users
  has_many :message_users
  
  has_many :missions
end
