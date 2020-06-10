# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "1.Cleaning db"
Restaurant.destroy_all

puts "2. Creating restaurants"

tapas = { name: "tapatapa", address: "Paseo Gracia", category: "italian" }
nomo = { name: "Nomo", address: "gracia", category: "italian" }
barturo = { name: "Turo", address: "turo park", category: "italian" }
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "italian" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }

counter = 3
[ tapas, nomo, barturo, dishoom, pizza_east ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "#{counter += 1} - Created #{restaurant.name}"
end
puts "#{counter + 1}- Finished!"
