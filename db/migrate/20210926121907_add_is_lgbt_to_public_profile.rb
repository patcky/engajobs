class AddIsLgbtToPublicProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :public_profiles, :is_lgbt, :boolean, default: false
  end
end
