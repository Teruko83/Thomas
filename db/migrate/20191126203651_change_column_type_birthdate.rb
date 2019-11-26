class ChangeColumnTypeBirthdate < ActiveRecord::Migration[5.2]
  def change
     change_column :babies, :birthdate, :string
  end
end
