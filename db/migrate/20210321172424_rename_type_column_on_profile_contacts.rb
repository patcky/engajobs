class RenameTypeColumnOnProfileContacts < ActiveRecord::Migration[6.0]
  def change
    rename_column :profile_contacts, :type, :profile_contacts_type
  end
end
