class Page < ApplicationRecord
  belongs_to :user
  has_many :reviews,dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category


  has_many :crs,dependent: :destroy
  has_many :cools,dependent: :destroy
  has_many :cutes,dependent: :destroy

end
# ### Association
# - belongs_to :user
# - has_many :reviews