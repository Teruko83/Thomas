class CreateBadgeOwnerships < ActiveRecord::Migration[5.2]
  def change
    create_table :badge_ownerships do |t|
      t.string :badge_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
