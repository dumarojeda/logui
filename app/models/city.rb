class City < ApplicationRecord
  has_many :guides
  has_many :tourists
end
