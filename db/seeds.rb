10.times do
  User.create!(
    email: Faker::Internet.email,
    password: "secrete",
    password_confirmation: "secrete",
    confirmed_at: DateTime.now,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    role: Faker::Number.between(from: 1, to: 2),
  )
end

10.times do
  Gp.create!(
    container_no: Faker::Alphanumeric.alphanumeric(number: 11),
    weight: Faker::Number.between(from: 2000, to: 40000),
    vehicle_reg: Faker::Vehicle.license_plate,
    hauller: Faker::Company.name,
    is_approved: Faker::Boolean.boolean,
    customer: Faker::Company.name,
    date_in: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now),
    date_out: Faker::Time.between(from: DateTime.now, to: DateTime.now + 30),
    line: Faker::Company.name,
    size: Faker::Lorem.word,
    depot: Faker::Address.community,
    sheet: Faker::Alphanumeric.alphanumeric(number: 8),
    creator: User.all.sample
  )
end
