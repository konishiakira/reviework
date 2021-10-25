class CreateReviewUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :review_users do |t|
      t.references  :user, null: false, foreign_key: true
      t.references  :review, null: false, foreign_key: true
      t.timestamps
    end
  end
end
# ## review_user テーブル

# | Column  | Type       | Options                        |
# | ------- | ---------- | ------------------------------ |
# | review  | references | null: false, foreign_key: true |
# | user    | references | null: false, foreign_key: true |
# | comment | string     |                                |

