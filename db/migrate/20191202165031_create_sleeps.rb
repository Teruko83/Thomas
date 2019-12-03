class CreateSleeps < ActiveRecord::Migration[5.2]
  def change
    create_table :sleeps do |t|
      t.integer :sleeps, :sleep_time, :integer
      t.string :sleeps, :sleep_type, :string
      t.references :sleeps, :baby, foreign_key: true

      t.timestamps
    end
  end
end
