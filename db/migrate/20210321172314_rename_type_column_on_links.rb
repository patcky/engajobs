class RenameTypeColumnOnLinks < ActiveRecord::Migration[6.0]
  def change
    rename_column :links, :type, :link_type
  end
end
