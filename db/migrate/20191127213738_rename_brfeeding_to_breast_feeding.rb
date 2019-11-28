class RenameBrfeedingToBreastFeeding < ActiveRecord::Migration[5.2]
  def change
    rename_table :breastfeedings, :breast_feedings
  end
end
