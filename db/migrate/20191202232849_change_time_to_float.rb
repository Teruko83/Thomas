class ChangeTimeToFloat < ActiveRecord::Migration[5.2]
  def change
    remove_column :sleeps, :sleep_time
    add_column :sleeps, :sleep_time, :float
  end
end
