class AddDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :breast_feedings, :breast_side, "L"
  end
end
