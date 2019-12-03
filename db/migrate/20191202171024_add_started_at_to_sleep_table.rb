class AddStartedAtToSleepTable < ActiveRecord::Migration[5.2]
  def change
    add_column :sleeps, :start_date, :datetime
  end
end
