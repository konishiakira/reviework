class Repl < ApplicationRecord
  belongs_to :user
  belongs_to :review
end
## repls テーブル


# ### Association
# - belongs_to :user
# - belongs_to :review