class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.integer :type
      t.string :url
      t.references :public_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
