class AddEmailToCareTakings < ActiveRecord::Migration[5.2]
  def change
    add_column :care_takings, :email, :string
  end
end
