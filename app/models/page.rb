class Page < ApplicationRecord
  belongs_to :user
  has_many :reviews  

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

end
# ### Association
# - belongs_to :user
# - has_many :reviews