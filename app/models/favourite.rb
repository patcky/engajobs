class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :public_profile
end
