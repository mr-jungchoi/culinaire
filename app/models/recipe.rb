class Recipe < ActiveRecord::Base
  belongs_to :author, class_name: User, foreign_key: :user_id
  has_one :source
  has_many :ingredients, as: :cookable
  has_many :foods, through: :ingredients
  has_many :favorite_recipes
  has_many :followers, through: :favorite_recipes, class_name: User, foreign_key: :user_id
end
