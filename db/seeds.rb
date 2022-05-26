require 'faker'

puts "Cleaning database"

  Restaurant.destroy_all

puts 'Database Clean'

puts 'Creating Restaurants'

8.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    image_url: Faker::LoremFlickr.image(size: "466x180", search_terms: ['food'])
  )
  puts restaurant.name
end

puts "Finished"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
