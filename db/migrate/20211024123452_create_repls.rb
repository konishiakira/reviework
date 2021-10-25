class CreateRepls < ActiveRecord::Migration[6.0]
  def change
    create_table :repls do |t|
      t.references  :user, null: false, foreign_key: true
      t.references  :review, null: false, foreign_key: true
      t.text        :repl,null: false
      t.timestamps
    end
  end
end
# | Column  | Type       | Options                        |
# | ------- | ---------- | ------------------------------ |
# | user    | references | null: false, foreign_key: true |
# | review  | references | null: false, foreign_key: true |
# | repl    | text       |                                |