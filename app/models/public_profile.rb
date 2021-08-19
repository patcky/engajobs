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
  has_many :address_contacts, through: :addresses
  has_many :address_business_hours, through: :addresses
  has_many :profile_languages, dependent: :destroy
  has_many :languages, through: :profile_languages

  accepts_nested_attributes_for :provider_specialities, allow_destroy: true
  accepts_nested_attributes_for :links, allow_destroy: true
  accepts_nested_attributes_for :profile_contacts, allow_destroy: true
  accepts_nested_attributes_for :profile_business_hours, allow_destroy: true
  accepts_nested_attributes_for :addresses, allow_destroy: true
  accepts_nested_attributes_for :profile_languages, allow_destroy: true
end
