# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "seed-generated product", description: "I also created this product without using the HTML form!", image_url: "https://cdn.pixabay.com/photo/2017/11/04/11/37/old-2917289_960_720.jpg", price: 505)

Order.create(user_id: 1, product_id: 1, price: 500, total: 10.0)
Order.create(user_id: 1, product_id: 2, price: 1000, total: 500.0)