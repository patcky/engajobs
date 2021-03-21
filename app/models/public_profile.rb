class PublicProfile < ApplicationRecord
  belongs_to :user
  has_many :favourites
  has_many :reviews
  has_many :provider_specialities, dependent: :destroy
  has_many :specialities, through: :provider_specialities
  has_many :areas, through: :specialities
  has_many :links, dependent: :destroy
  has_many :profile_contacts, dependent: :destroy
  has_many :profile_business_hours, dependent: :destroy
  has_many :addresses, dependent: :destroy
end
