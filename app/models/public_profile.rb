class PublicProfile < ApplicationRecord
  belongs_to :user
  has_many :favourites, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :provider_specialities, dependent: :destroy
  has_many :specialities, through: :provider_specialities
  has_many :areas, through: :specialities
  has_many :links, dependent: :destroy
  has_many :profile_contacts, dependent: :destroy
  has_many :profile_business_hours, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_one_attached :photo
end
