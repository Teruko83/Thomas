class RenameFeedingstoBreastfeedings < ActiveRecord::Migration[5.2]
  def change
    rename_table :feedings, :breastfeedings
  end
end
