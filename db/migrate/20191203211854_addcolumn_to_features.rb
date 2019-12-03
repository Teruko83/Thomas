class AddcolumnToFeatures < ActiveRecord::Migration[5.2]
  def change
    add_reference :diapers, :user, foreign_key: true
    add_reference :sleeps, :user, foreign_key: true
    add_reference :bottlefeedings, :user, foreign_key: true
    add_reference :breast_feedings, :user, foreign_key: true
  end
end
