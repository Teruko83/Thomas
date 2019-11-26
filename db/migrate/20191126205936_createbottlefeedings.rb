class Createbottlefeedings < ActiveRecord::Migration[5.2]
  def change
    create_table :bottlefeedings do |t|
      t.datetime :start
      t.integer :quantity
      t.references :baby, foreign_key: true

      t.timestamps
    end
  end
end
