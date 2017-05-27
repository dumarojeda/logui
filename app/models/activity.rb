class Activity < ApplicationRecord
  belongs_to :guide
  has_many :scores, as: :scoreable
end
