class ChangePublicProfilesNameDescriptionAndHasOnlineService < ActiveRecord::Migration[6.1]
  def change
    change_column :public_profiles, :name, :string, null: false
    change_column :public_profiles, :description, :string, null: false
    change_column :public_profiles, :has_home_service, :boolean, null: false
    change_column :public_profiles, :has_online_service, :boolean, null: false
    remove_column :public_profiles, :is_validated
  end
end
