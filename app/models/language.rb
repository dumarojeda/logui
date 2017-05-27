class Language < ApplicationRecord
  has_many :tourists
  has_many :guides
end
