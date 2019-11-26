class ChangeColumnTypeFeeding < ActiveRecord::Migration[5.2]
  def change
    remove_column :feedings, :duration
    add_column :feedings, :duration_minutes, :integer
  end
end
