class CreateDiapers < ActiveRecord::Migration[5.2]
  def change
    create_table :diapers do |t|
      t.datetime :start_date
      t.string :category

      t.timestamps
    end
  end
end
