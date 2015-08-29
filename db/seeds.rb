User.destroy_all

6.times do
  user = User.create!(
    name: Faker::Name.first_name,
    email: Faker::Internet.email,
    description: Faker::Lorem.paragraph(2),
    password: Faker::Internet.password
  )
end

  2.times do
    Advertisement.create!(
        user: user,
        title: Faker::Lorem.sentence(3, true, 4),
        description: Faker::Lorem.paragraphs(rand(2..8)),
        start_date: Faker::Date.between(2.days.ago, Date.today),
        end_date: Faker::Date.forward(30),
        number_of_places: Faker::Number.number(1),
        price: Faker::Number.number(3),
        map_lat: Faker::Address.latitude,
        map_long: Faker::Address.longitude
    )
  end
end

