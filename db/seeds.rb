5 times do
  User.create(username: Faker::StarWars.droid,
              email: Faker::Internet.email,
              password: 'password')
end

# Food Types
spice = FoodType.create(name: "Spice")
herb = FoodType.create(name: "Herb")
vegetable = FoodType.create(name: "Vegetable")
fruit = FoodType.create(name: "Fruit")
protein = FoodType.create(name: "Protein")
dairy = FoodType.create(name: "Dairy")
dry_good = FoodType.create(name: "Dry Good")
grains = FoodType.create(name: "Grain")
product = FoodType.create(name: "Product")

# Proteins
ribeye_steak = Food.create(name: "Ribeye Steak", food_type: protein)
chicken_breast = Food.create(name: "Chicken Breast", food_type: protein)
chicken_thigh = Food.create(name: "Chicken Thigh", food_type: protein)
ground_beef = Food.create(name: "Ground Beef", food_type: protein)
salmon = Food.create(name: "Salmon", food_type: protein)
tilapia = Food.create(name: "Tilapia", food_type: protein)

# Vegetables
russet_potato = Food.create(name: "Russet Potato", food_type: vegetable)
asparagus = Food.create(name: "Asparagus", food_type: vegetable)
carrot = Food.create(name: "Carrot", food_type: vegetable)
daikon_radish = Food.create(name: "Daikon Radish", food_type: vegetable)
lettuce = Food.create(name: "Lettuce", food_type: vegetable)
