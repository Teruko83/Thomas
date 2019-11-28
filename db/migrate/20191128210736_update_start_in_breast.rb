class UpdateStartInBreast < ActiveRecord::Migration[5.2]
  def change
    remove_column :breast_feedings, :start
    add_column :breast_feedings, :start, :datetime
  end
end
