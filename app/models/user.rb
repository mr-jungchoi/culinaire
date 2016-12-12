class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email

  has_many :pantries
  has_many :favorites
  has_many :favorite_recipes, through: :favorites, source: :recipe
  has_many :cookables, through: :pantries
  has_many :ingredients, through: :cookables
end
