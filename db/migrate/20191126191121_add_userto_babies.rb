class AddUsertoBabies < ActiveRecord::Migration[5.2]
  def change
    add_reference :babies, :user, index: true, foreign_key: true
  end
end
