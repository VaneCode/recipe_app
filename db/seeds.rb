# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# wayuni = User.create(name: 'wayungi' email: 'francis@gmail.com', password:'123456')
# obella = User.create(name: 'obella', email: 'obella@gmail.com', password:'123456')
# kibuuka = User.create(name: 'kibuuka', email: 'kibuuka@gmail.com', password:'123456')
# mahooro = User.create(name: 'mahooro', email: 'mahooro@gmail.com', password:'123456')
# anzoyo = User.create(name: 'anzoyo', email: 'anzoyo@gmail.com', password:'123456')
# sali = User.create(name: 'sali', email: 'sali@gmail.com', password:'123456')

# akora = Inventory.create(name:'Akora', description: 'Delicious staple foodfor the people of West Nile (Uganda)', user: wayungi)
# dekngor = Inventory.create(name:'Dek Ngor', description: 'Boiled Amur beans mixed with landi', user: wayungi)
# angara = Inventory.create(name:'Angara', description: 'Big fresh nile water fish, shinny and fatty, fried with its own fats', user: wayungi)

# luwombo = Inventory.create(name:'Luwombo', description: 'Chicken cooked in Ndagala', user: sali)
# shawama = Inventory.create(name:'Shawama', description: 'Conconction of chips + chicken & wheat', user: sali)
# lekuki = Inventory.create(name:'Lekuki', description: 'Wid lased kuki iten 1 pa de', user: sali)

# # ---------------------------------------------------------------------------
# oboo = Food.create(name: 'Oboo', measurement_unit: 'Bundle', price: 500)
# rec = Food.create(name: 'Rec', measurement_unit: 'Piece', price: 15000)
# odii = Food.create(name: 'Odii', measurement_unit: 'Kg', price: 10000)
# oboo = Food.create(name: 'Oboo', measurement_unit: 'Bundle', price: 500)
# beans = Food.create(name: 'Beans', measurement_unit: 'Kg', price: 3600)
# moo = Food.create(name: 'Moo', measurement_unit: 'Litre', price: 8000)
# yao = Food.create(name: 'Yao', measurement_unit: 'Litre', price: 12000)


# InventoryFood.create(quantity: 8, inventory: akora, food:oboo)
# InventoryFood.create(quantity: 2, inventory: akora, food:rec)
# InventoryFood.create(quantity: 1, inventory: akora, food:odii)

# InventoryFood.create(quantity: 1, inventory: dekngor, food:beans)
# InventoryFood.create(quantity: 1, inventory: dekngor, food:odii)

# InventoryFood.create(quantity: 4, inventory: angara, food:rec)
# InventoryFood.create(quantity: 50, inventory: angara, food:moo)

#Users
#5.times do 
    #User.create(name:Faker::Name)

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
        inventory_food.quantity = Faker::Number.between(from: 1, to: 10)
        inventory_food.inventory = Inventory.all.sample
        inventory_food.food = Food.all.sample
    end
end
#Recipes foods
10.times do 
    RecipeFood.create do |recipe_food|
        recipe_food.quantity = Faker::Number.between(from: 1, to: 10)
        recipe_food.recipe = Recipe.all.sample
        recipe_food.food = Food.all.sample
    end
end

