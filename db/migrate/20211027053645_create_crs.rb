class CreateCrs < ActiveRecord::Migration[6.0]
  def change
    create_table :crs do |t|
      t.references  :page, null: false, foreign_key: true
      t.references  :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
