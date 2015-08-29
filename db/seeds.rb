# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

12.times do
  User.create!(
    name: Faker::Name.first_name,
    email: Faker::Internet.email,
    description: Faker::Lorem.paragraphs(rand(2..8)),
    password: Faker::Internet.password
  )
end