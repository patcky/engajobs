class Area < ApplicationRecord
  has_many :specialities, dependent: :destroy
  accepts_nested_attributes_for :specialities
end
