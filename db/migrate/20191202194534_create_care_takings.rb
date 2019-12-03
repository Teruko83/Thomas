class CreateCareTakings < ActiveRecord::Migration[5.2]
  def change
    create_table :care_takings do |t|
      t.references :user
      t.references :baby

      t.timestamps
    end
  end
end
