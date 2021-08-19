class ChangeAreasName < ActiveRecord::Migration[6.1]
  def change
    change_column :areas, :name, :string, null: false
  end
end
