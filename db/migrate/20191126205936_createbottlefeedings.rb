class Createbottlefeedings < ActiveRecord::Migration[5.2]
  def change
    create_table :feedings do |t|
      t.time :start
      t.boolean :breast
      t.string :breast_side
      t.time :duration
      t.integer :quantity
      t.references :baby, foreign_key: true

      t.timestamps
    end
  end
end
