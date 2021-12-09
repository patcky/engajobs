class CreateProfileContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_contacts do |t|
      t.integer :profile_contact_type, null: false
      t.string :profile_contact_value, null: false
      t.references :public_profile, null: false, foreign_key: true
      t.timestamps
    end
  end
end
