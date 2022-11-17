# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


wayuni = User.create(name: 'wayungi' email: 'francis@gmail.com', password:'123456')
obella = User.create(name: 'obella', email: 'obella@gmail.com', password:'123456')
kibuuka = User.create(name: 'kibuuka', email: 'kibuuka@gmail.com', password:'123456')
mahooro = User.create(name: 'mahooro', email: 'mahooro@gmail.com', password:'123456')
anzoyo = User.create(name: 'anzoyo', email: 'anzoyo@gmail.com', password:'123456')
sali = User.create(name: 'sali', email: 'sali@gmail.com', password:'123456')

akora = Inventory.create(name:'Akora', description: 'Delicious staple foodfor the people of West Nile (Uganda)', user: wayungi)
dekngor = Inventory.create(name:'Dek Ngor', description: 'Boiled Amur beans mixed with landi', user: wayungi)
angara = Inventory.create(name:'Angara', description: 'Big fresh nile water fish, shinny and fatty, fried with its own fats', user: wayungi)

luwombo = Inventory.create(name:'Luwombo', description: 'Chicken cooked in Ndagala', user: sali)
shawama = Inventory.create(name:'Shawama', description: 'Conconction of chips + chicken & wheat', user: sali)
lekuki = Inventory.create(name:'Lekuki', description: 'Wid lased kuki iten 1 pa de', user: sali)

# ---------------------------------------------------------------------------
oboo = Food.create(name: 'Oboo', measurement_unit: 'Bundle', price: 500)
rec = Food.create(name: 'Rec', measurement_unit: 'Piece', price: 15000)
odii = Food.create(name: 'Odii', measurement_unit: 'Kg', price: 10000)
oboo = Food.create(name: 'Oboo', measurement_unit: 'Bundle', price: 500)
beans = Food.create(name: 'Beans', measurement_unit: 'Kg', price: 3600)
moo = Food.create(name: 'Moo', measurement_unit: 'Litre', price: 8000)
yao = Food.create(name: 'Yao', measurement_unit: 'Litre', price: 12000)


InventoryFood.create(quantity: 8, inventory: akora, food:oboo)
InventoryFood.create(quantity: 2, inventory: akora, food:rec)
InventoryFood.create(quantity: 1, inventory: akora, food:odii)

InventoryFood.create(quantity: 1, inventory: dekngor, food:beans)
InventoryFood.create(quantity: 1, inventory: dekngor, food:odii)

InventoryFood.create(quantity: 4, inventory: angara, food:rec)
InventoryFood.create(quantity: 50, inventory: angara, food:moo)






