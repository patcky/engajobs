class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.integer :link_type, null: false
      t.string :url, null: false
      t.references :public_profile, null: false, foreign_key: true
      t.timestamps
    end
  end
end
