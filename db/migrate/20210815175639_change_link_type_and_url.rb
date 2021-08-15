class ChangeLinkTypeAndUrl < ActiveRecord::Migration[6.1]
  def change
    change_column :links, :link_type, :integer, null: false
    change_column :links, :url, :string, null: false
  end
end
