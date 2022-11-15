# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Users
#5.times do 
    #User.create(name:Faker::Name)
#end

#Inventories
5.times do
    Inventory.create do |inventory| 
        inventory.name = Faker::Lorem.word
        inventory.user = User.all.sample
    end
end
#Recipes
5.times do
    Recipe.create do |recipe| 
        recipe.name = Faker::Lorem.word
        recipe.preparation_time = rand(1..99)
        recipe.cooking_time = rand(1..99)
        recipe.description = Faker::Lorem.paragraphs(number: 1)
        recipe.public = true
        recipe.user = User.all.sample
    end
end
#Food
5.times do
    Food.create do |food|
        food.name = Faker::Lorem.word
        food.measurement_unit = Faker::Lorem.word
        food.price = Faker::Number.between(from: 0.0, to: 1.0).round(2)
    end
end
#Invetory foods
10.times do 
    InventoryFood.create do |inventory_food|
        inventory_food.quantity = rand(1..99)
        inventory_food.inventory = Inventory.all.sample
        inventory_food.food = Food.all.sample
    end
end
#Recipes foods
10.times do 
    RecipeFood.create do |recipe_food|
        recipe_food.quantity = rand(1..99)
        recipe_food.recipe = Recipe.all.sample
        recipe_food.food = Food.all.sample
    end
end