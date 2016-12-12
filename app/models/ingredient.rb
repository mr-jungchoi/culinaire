class Ingredient < ActiveRecord::Base
  belongs_to :food
  belongs_to :food_type, through: :food
  belongs_to :cookable, polymorphic: true
end
