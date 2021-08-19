class ChangeLanguagesName < ActiveRecord::Migration[6.1]
  def change
    change_column :languages, :name, :string, null: false
  end
end
