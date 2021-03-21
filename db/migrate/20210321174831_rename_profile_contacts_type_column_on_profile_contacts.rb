class RenameProfileContactsTypeColumnOnProfileContacts < ActiveRecord::Migration[6.0]
  def change
    rename_column :profile_contacts, :profile_contacts_type, :profile_contact_type
  end
end
