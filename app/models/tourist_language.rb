class TouristLanguage < ApplicationRecord
  belongs_to :tourist
  belongs_to :language
end
