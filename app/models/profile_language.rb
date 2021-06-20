class ProfileLanguage < ApplicationRecord
  belongs_to :public_profile
  belongs_to :language
end
