class CreateProfileContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_contacts do |t|
      t.integer :type
      t.string :profile_contact_value
      t.references :public_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
