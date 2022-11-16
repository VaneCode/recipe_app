# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


francis = User.create(name: 'francis' email: 'francis@gmail.com', password:'123456')
obella = User.create(name: 'obella', email: 'obella@gmail.com', password:'123456')
kibuuka = User.create(name: 'kibuuka', email: 'kibuuka@gmail.com', password:'123456')
mahooro = User.create(name: 'mahooro', email: 'mahooro@gmail.com', password:'123456')
anzoyo = User.create(name: 'anzoyo', email: 'anzoyo@gmail.com', password:'123456')
sali = User.create(name: 'sali', email: 'sali@gmail.com', password:'123456')

chogm = Inventory.create(name:'chogm', description: 'pork joint', user: francis)