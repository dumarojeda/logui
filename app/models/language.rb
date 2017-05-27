class Language < ApplicationRecord
  has_many :guide_languages
  has_many :guides, through: :guide_languages
end
