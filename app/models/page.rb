class Page < ApplicationRecord
  belongs_to :user
  has_many :review  

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

end
# ### Association
# - belongs_to :user
# - has_many :reviews