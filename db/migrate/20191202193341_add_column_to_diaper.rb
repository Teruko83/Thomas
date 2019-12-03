class AddColumnToDiaper < ActiveRecord::Migration[5.2]
  def change
   add_reference :diapers, :baby, foreign_key: true
  end
end
