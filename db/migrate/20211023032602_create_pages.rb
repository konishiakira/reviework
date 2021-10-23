class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.references  :user, null: false, foreign_key: true      
      t.string :title,null: false
      t.integer :category_id,null: false
      t.timestamps
    end
  end
end
## pages テーブル

# | Column      | Type       | Options                        |
# | ----------- | ---------- | ------------------------------ |
# | user        | references | null: false, foreign_key: true |
# | title       | string     | null: false                    |
# | category_id | integer    | null: false                    |

# ### Association
# - belongs_to :user
# - has_many :reviews