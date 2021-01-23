# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



WineExperience.destroy_all
Booking.destroy_all
User.destroy_all


Natalia = User.create(first_name: "Natalia", last_name: "Gatti", email: "gattinati.ng@gmail.com", password: Ca145236*
)
Facundo = User.create(first_name: "Facundo", last_name: "Lanus", email: "facundolanus@gmail.com", password: Ca145236*
)
Camilo = User.create(first_name: "Camilo", last_name: "Gonzalez", email: "camilogzlez@gmail.com", password: Ca145236*
)

experience_1 = WineExperience.create(title: "Bodega Ruffini malbec tasting", description: "pruebe los vinos de la bodega ....", date: 01/30/2021, price: "1500", user: Natalia)

experience_2 = WineExperience.create(title: "Vinos del Sur de Francia", description: "Realize un viaje a traves de los vinos ....", date: 01/31/2021, price: "5000", user: Facundo)

experience_3 = WineExperience.create(title: "Vinos del Cafayate ", description: "Deleitese con vinos de talla mundial ....", date: 01/28/2021, price: "1800", user: Camilo)

Booking.create(user: Natalia, experience: experience_1)
Booking.create(user: Facundo, experience: experience_2)
Booking.create(user: Camilo, experience: experience_3)
