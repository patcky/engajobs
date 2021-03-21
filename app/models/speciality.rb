class Speciality < ApplicationRecord
  belongs_to :area
  has_many :provider_specialities, dependent: :destroy
end
