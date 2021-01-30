# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "date"

WineExperience.destroy_all
Booking.destroy_all
User.destroy_all

puts "creando tres seeds"

natalia = User.create!(email: "gattinati.ng@gmail.com", password: "Ca145236*")
facundo = User.create!(email: "facundolanus@gmail.com", password: "Ca145236*")
camilo = User.create!(email: "camilogzlez@gmail.com", password: "Ca145236*")

rufinni = WineExperience.create!(title: "Bodega Ruffinni malbec tasting", description: "pruebe los vinos de la bodega ....", date: Date.current, price: 1500, owner: natalia, address: Faker::Address.street_address )

francia = WineExperience.create!(title: "Vinos del Sur de Francia", description: "Realize un viaje a traves de los vinos ....", date: Date.current, price: 5000, owner: facundo, address: Faker::Address.street_address )

cafayate = WineExperience.create!(title: "Vinos del Cafayate ", description: "Deleitese con vinos de talla mundial ....", date: Date.current, price: 1800, owner: camilo, address: Faker::Address.street_address )

Booking.create!(client: natalia, wine_experience: rufinni)
Booking.create!(client: facundo, wine_experience: francia)
Booking.create!(client: camilo, wine_experience: cafayate)

puts "tres seeds creadas"

# natalia = User.create(first_name: "Natalia", last_name: "Gatti", email: "gattinati.ng@gmail.com", password: Ca145236*
# )
# facundo = User.create(first_name: "Facundo", last_name: "Lanus", email: "facundolanus@gmail.com", password: Ca145236*
# )
# camilo = User.create(first_name: "Camilo", last_name: "Gonzalez", email: "camilogzlez@gmail.com", password: Ca145236*
# )