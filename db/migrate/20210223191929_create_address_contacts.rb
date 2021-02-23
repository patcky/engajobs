class CreateAddressContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :address_contacts do |t|
      t.integer :type
      t.string :address_contact_value
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
