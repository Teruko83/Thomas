class AddColumnToDiaperForComment < ActiveRecord::Migration[5.2]
  def change
    add_column :diapers, :comment, :string
  end
end
