class CreateMoods < ActiveRecord::Migration[5.2]
  def change
    create_table :moods do |t|
      t.string :category
      t.datetime :start_date
      t.references :baby, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
