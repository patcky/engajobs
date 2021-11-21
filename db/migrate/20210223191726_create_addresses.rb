class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :complement
      t.string :district
      t.string :city
      t.string :state
      t.string :country, null: false
      t.references :public_profile, null: false, foreign_key: true
      t.timestamps
    end
  end
end
