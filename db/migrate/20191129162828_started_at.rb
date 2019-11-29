class StartedAt < ActiveRecord::Migration[5.2]
  def change
    add_column :bottlefeedings, :start_date, :datetime
    add_column :breast_feedings, :start_date, :datetime
  end
end
