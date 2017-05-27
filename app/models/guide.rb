class Guide < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :country
  has_many :languages, through: :guide_languages
  has_many :activities
  has_many :scores, as: :scoreable
end
