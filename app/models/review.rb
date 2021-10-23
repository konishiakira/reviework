class Review < ApplicationRecord

belongs_to :page
belongs_to :user
has_many :replys
has_many :crys
has_many :cools
has_many :cutes
has_many :scareds
has_many :healings
has_many :funs
has_many :interestings
has_many :thought_provokings
end
### Association
# - belongs_to :page
# - belongs_to :user
# - has_many :replys
# - has_many :crys
# - has_many :cools
# - has_many :cutes
# - has_many :scareds
# - has_many :healings
# - has_many :funs
# - has_many :interestings
# - has_many :thought_provokings