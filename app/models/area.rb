class Area < ApplicationRecord
  has_many :specialities, dependent: :destroy
end
