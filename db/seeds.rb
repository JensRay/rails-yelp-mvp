# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting database..."
Restaurant.destroy_all
puts "deleting reviews"
Review.destroy_all

puts "creating new restaurants..."

categories = ["chinese", "italian", "japanese", "french", "belgian"]
5.times do
  Restaurant.create(
    name: Faker::JapaneseMedia::Conan.character,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: categories.sample
    )

end

puts "done"
