class Pantry < ActiveRecord::Base
  belongs_to :user
  has_many :ingredients, as: :cookable
  has_many :foods, through: :ingredients
end
