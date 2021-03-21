class ChangeColumnNameTypeOnAddressContacts < ActiveRecord::Migration[6.0]
  def change
    rename_column :address_contacts, :type, :address_contact_type
  end
end
