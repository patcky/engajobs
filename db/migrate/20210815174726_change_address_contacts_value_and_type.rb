class ChangeAddressContactsValueAndType < ActiveRecord::Migration[6.1]
  def change
    change_column :address_contacts, :address_contact_value, :string, null: false
    change_column :address_contacts, :address_contact_type, :string, null: false
  end
end
