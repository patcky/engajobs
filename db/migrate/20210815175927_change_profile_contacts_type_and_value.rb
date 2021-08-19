class ChangeProfileContactsTypeAndValue < ActiveRecord::Migration[6.1]
  def change
    change_column :profile_contacts, :profile_contact_value, :string, null: false
    change_column :profile_contacts, :profile_contact_type, :string, null: false
  end
end
