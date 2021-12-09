class CreatePublicProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :public_profiles do |t|
      t.string :name, null: false
      t.string :professional_registry
      t.string :description, null: false
      t.string :gender
      t.string :ethnicity
      t.integer :age
      t.string :photo
      t.boolean :has_online_service, null: false
      t.boolean :has_home_service, null: false
      t.boolean :is_pcd
      t.boolean :is_lgbt, default: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
