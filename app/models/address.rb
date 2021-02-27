class Address < ApplicationRecord
  belongs_to :public_profile
  has_many :address_business_hours, dependent: :destroy
  has_many :address_contacts, dependent: :destroy
end
