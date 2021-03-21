class AddColumnRatingToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :rating, :integer, null: false
  end
end
