class City < ApplicationRecord
  has_many :guides
  has_many :tourists
  has_many :activities
end
