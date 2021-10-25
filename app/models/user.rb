class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # has_many :review_users, dependent: :destroy
  # has_many :reviews, through: :review_users

  has_many :reviews
  has_many :pages
  has_many :repls

  # has_many :dm_users
  # has_many :dms, through: :dm_users
  # has_many :bans
  # has_many :blocks
  # has_many :crys
  # has_many :cools
  # has_many :cutes
  # has_many :scareds
  # has_many :healings
  # has_many :funs
  # has_many :interestings
  # has_many :thought_provokings

end
