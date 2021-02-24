class CreatePublicProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :public_profiles do |t|
      t.string :name
      t.string :professional_registry
      t.text :description
      t.string :gender
      t.string :ethnicity
      t.integer :age
      t.string :photo
      t.boolean :has_online_service
      t.boolean :has_home_service
      t.boolean :is_pcd
      t.boolean :is_validated, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
