class Food < ActiveRecord::Base
  belongs_to :food_type
  has_many :uses, class_name: Ingredient
  has_many :pantries, through: :uses, source: :cookable, source_type: "Pantry"
  has_many :recipes, through: :uses, source: :cookable, source_type: "Recipe"
end
