class CreateProviderSpecialities < ActiveRecord::Migration[6.0]
  def change
    create_table :provider_specialities do |t|
      t.references :speciality, null: false, foreign_key: true
      t.references :public_profile, null: false, foreign_key: true
      t.timestamps
    end
  end
end
