class AddActiveBabyId < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :active_baby_id, :integer
  end
end
