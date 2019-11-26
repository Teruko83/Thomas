class CreateBottlefeedings < ActiveRecord::Migration[5.2]
  def change
    create_table :bottlefeedings do |t|

      t.timestamps
    end
  end
end
