30.times do
  User.create!(
    email: Faker::Internet.email,
    password: "secrete",
    password_confirmation: "secrete",
    confirmed_at: DateTime.now,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end