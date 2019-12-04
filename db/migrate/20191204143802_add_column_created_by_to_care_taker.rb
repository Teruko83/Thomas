class AddColumnCreatedByToCareTaker < ActiveRecord::Migration[5.2]
  def change
    add_column :diapers, :created_by, :string
  end
end
