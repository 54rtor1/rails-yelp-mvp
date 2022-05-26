require 'faker'

puts "Cleaning database"

  Restaurant.destroy_all

puts 'Database Clean'

puts 'Creating Restaurants'

Restaurant.create!(
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  phone_number: Faker::PhoneNumber.cell_phone,
  category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  image_url: "https://content.api.news/v3/images/bin/104903dc87c2963a2d3e722aa85fe923?width=650"
)

Restaurant.create!(
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  phone_number: Faker::PhoneNumber.cell_phone,
  category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  image_url: "https://naminhapanela.com/wp-content/uploads/2020/11/Moqueca-de-peixe-2.jpg"
)

Restaurant.create!(
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  phone_number: Faker::PhoneNumber.cell_phone,
  category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  image_url: "https://vejario.abril.com.br/wp-content/uploads/2021/10/Sushi-Omakase-sushibar-Zona-Sul-credito-Lipe-Borges-2.jpg?quality=70&strip=info&resize=680,453"
)

Restaurant.create!(
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  phone_number: Faker::PhoneNumber.cell_phone,
  category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  image_url: "https://mhmcdn.manualdohomemmoderno.com.br/?w=781&h=488&quality=100&clipping=crop&url=https://manualdohomemmoderno.com.br/files/2021/07/entenda-qual-e-a-ciencia-por-tras-do-churrasco-perfeito-entenda-qual-e-a-ciencia-por-tras-do-churrasco-perfeito.jpg"
)

Restaurant.create!(
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  phone_number: Faker::PhoneNumber.cell_phone,
  category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  image_url: "https://wallpaperaccess.com/full/767033.jpg"
)

Restaurant.create!(
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  phone_number: Faker::PhoneNumber.cell_phone,
  category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  image_url: "https://ttburger.com.br/img/novidades-1@2x.1e3f462f.jpg.webp"
)

puts restaurant.name

puts "Finished"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
