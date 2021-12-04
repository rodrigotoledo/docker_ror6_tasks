FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'aaasssddd' }
    password_confirmation { 'aaasssddd' }
    first_name { Faker::Name.female_first_name }
    last_name { Faker::Name.female_first_name }
  end
end
