class CreateScareds < ActiveRecord::Migration[6.0]
  def change
    create_table :scareds do |t|
      t.references  :page, null: false, foreign_key: true
      t.references  :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
