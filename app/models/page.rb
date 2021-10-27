class Page < ApplicationRecord
  belongs_to :user
  has_many :reviews  

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category


  has_many :crs

end
# ### Association
# - belongs_to :user
# - has_many :reviews