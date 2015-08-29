User.destroy_all

12.times do
  User.create!(
    name: Faker::Name.first_name,
    email: Faker::Internet.email,
    description: Faker::Lorem.paragraph(2),
    password: Faker::Internet.password
  )
end
