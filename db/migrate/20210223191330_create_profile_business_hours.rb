class CreateProfileBusinessHours < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_business_hours do |t|
      t.integer :day, null: false
      t.time :open_time, null: false
      t.time :close_time, null: false
      t.references :public_profile, null: false, foreign_key: true
      t.timestamps
    end
  end
end
