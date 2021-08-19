class ChangeAddressesCountry < ActiveRecord::Migration[6.1]
  def change
    change_column :addresses, :country, :string, null: false
    change_column :addresses, :state, :string, null: false
  end
end
