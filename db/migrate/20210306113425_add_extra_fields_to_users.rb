class AddExtraFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :district, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :status, :boolean, default: false
  end
end
