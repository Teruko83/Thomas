class AddNameToCareTakings < ActiveRecord::Migration[5.2]
  def change
    add_column :care_takings, :name, :string
  end
end
