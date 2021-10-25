class Review < ApplicationRecord

  # has_many :review_users, dependent: :destroy
  # has_many :users, through: :review_users

  # has_many :users, through: :review_users
  belongs_to :page
  belongs_to :user
  has_many :reps

  # has_many :crys
  # has_many :cools
  # has_many :cutes
  # has_many :scareds
  # has_many :healings
  # has_many :funs
  # has_many :interestings
  # has_many :thought_provokings
end
### Association
# - belongs_to :page
# - belongs_to :user
# - has_many :reps
# - has_many :crys
# - has_many :cools
# - has_many :cutes
# - has_many :scareds
# - has_many :healings
# - has_many :funs
# - has_many :interestings
# - has_many :thought_provokings