class CreateProfileBusinessHours < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_business_hours do |t|
      t.integer :day
      t.time :open_time
      t.time :close_time
      t.references :public_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
