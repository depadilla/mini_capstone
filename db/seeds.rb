# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


product4 = Product.new({name:"Pen", price:"1.00", image_url:" ", description: "It can write"})
product4.save

Supplier.create!(name: "Google", email: "google@email.com", phone_number: "4432543543")
Supplier.create!(name: "Apple", email: "apple@email.com", phone_number: "8572497164")

Product.create!({supplier_id: 1, name: "Cup", price: 5, description: "It can hold liquids!"})
Product.create!({supplier_id: 1, name: "Scarf", price: 10, description: "It keeps you warm!"})
Product.create!({supplier_id: 1, name: "Hat", price: 2, description: "It goes on your head"})
Product.create!({supplier_id: 1, name: "Pen", price: 1, description: "It can write!"})
Product.create!({supplier_id: 2, name: "Guitar", price: 20, description: "It helps you play songs!"})
Product.create!({supplier_id: 2, name: "Car", price: 100, description: "It helps you travel!"})
Product.create!({supplier_id: 2, name: "Phone", price: 900, description: "It helps text people!"})
Product.create!({supplier_id: 2, name: "Doggo", price: 99000, description: "It a working doggo."})


Image.create!(product_id: 1, url: " ")
Image.create!(product_id: 2, url: " ")
Image.create!(product_id: 3, url: " ")
Image.create!(product_id: 4, url: " ")
Image.create!(product_id: 5, url: " ")
Image.create!(product_id: 5, url: " ")
Image.create!(product_id: 6, url: " ")
Image.create!(product_id: 7, url: " ")
Image.create!(product_id: 8, url: " ")
Image.create!(product_id: 8, url: " ")