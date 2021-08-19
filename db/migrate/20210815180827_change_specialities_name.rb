class ChangeSpecialitiesName < ActiveRecord::Migration[6.1]
  def change
    change_column :specialities, :name, :string, null: false
  end
end
