# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "seed product", description: "two wheels and a frame", image_url: "bike1.jpg", price: 505)

Product.create(name: "seed product", description: "comes with a deck of cards", image_url: "bike2.jpg", price: 600)

Product.create(name: "seed product", description: "made of cardboard tubes", image_url: "bike3.jpg", price: 830)

Product.create(name: "seed product", description: "recovered from the titanic", image_url: "bike4.jpg", price: 15.000)

Order.create(user_id: 1, product_id: 1, total: 10.0)
Order.create(user_id: 1, product_id: 2, total: 500.0)