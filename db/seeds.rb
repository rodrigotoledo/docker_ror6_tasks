user = User.new(email: 'test@test.com', first_name: Faker::Name.female_first_name, last_name: '...', password: 'aassdd', password_confirmation: 'aassdd')
user.save

100.times do
  Author.create(name: Faker::Name.name_with_middle, email: Faker::Internet.email)
end
