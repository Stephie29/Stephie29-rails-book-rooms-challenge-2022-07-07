# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Hotel.destroy_all
Room.destroy_all
User.destroy_all

puts "Creating hotels..."
hotels = Hotel.create(
  [
    { name: "Dishoom", address: "54 Promenade des Anglais 06000 Nice" },
    { name: "Okko Hotel", address: "30 A, rue d’Alsace 75010 — Paris" },
    { name: "Hotel Amour", address: "3 Av. des Fleurs 34000 Montpellier" },
    { name: "Premiere Classe Hotel", address: "117 Traverse de la Montre C.C. Grand V, Marseille" },
    { name: "Ibis Hotel", address: "11 Quai Jules Courmont, Lyon" }
  ]
)
puts "Finished hotels !"

puts "Creating rooms..."
Room.create(
  [
    { price_per_night: 120, capacity: 3, hotel_id: hotels[0].id },
    { price_per_night: 76, capacity: 2, hotel_id: hotels[1].id },
    { price_per_night: 78, capacity: 2, hotel_id: hotels[2].id },
    { price_per_night: 90, capacity: 2, hotel_id: hotels[3].id },
    { price_per_night: 110, capacity: 2, hotel_id: hotels[4].id },
    { price_per_night: 130, capacity: 2, hotel_id: hotels[3].id },
    { price_per_night: 50, capacity: 1, hotel_id: hotels[0].id },
    { price_per_night: 70, capacity: 2, hotel_id: hotels[1].id },
    { price_per_night: 60, capacity: 2, hotel_id: hotels[2].id },
    { price_per_night: 80, capacity: 3, hotel_id: hotels[3].id },
    { price_per_night: 62, capacity: 2, hotel_id: hotels[4].id }
  ]
)
puts "Finished rooms !"

puts "Creating user..."
User.create(email: "test@lewagon.fr", password: "lewagon")
puts "Finished user !"
