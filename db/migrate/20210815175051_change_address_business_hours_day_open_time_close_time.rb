class ChangeAddressBusinessHoursDayOpenTimeCloseTime < ActiveRecord::Migration[6.1]
  def change
    change_column :address_business_hours, :day, :integer, null: false
    change_column :address_business_hours, :open_time, :time, null: false
    change_column :address_business_hours, :close_time, :time, null: false
  end
end
