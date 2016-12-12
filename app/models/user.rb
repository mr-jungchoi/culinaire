class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email

  has_many :pantries
  has_many :ingredients, through: :pantries
  has_many :foods, through: :ingredients
  has_many :favorite_recipes
  has_many :saved_recipes, through: :favorite_recipes, source: :recipe
  has_many :published_recipes, class_name: Recipe
end
