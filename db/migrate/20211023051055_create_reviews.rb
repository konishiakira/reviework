class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references  :page, null: false, foreign_key: true
      t.references  :user, null: false, foreign_key: true
      t.text :comment,null: false
      t.integer  :repl
      t.timestamps
    end
  end
end

# ## reviews テーブル

# | Column  | Type       | Options                        |
# | ------- | ---------- | ------------------------------ |
# | page    | references | null: false, foreign_key: true |
# | user    | references | null: false, foreign_key: true |
# | comment | string     |                                |


# ### Association
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
