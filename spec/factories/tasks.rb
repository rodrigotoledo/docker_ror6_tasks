FactoryBot.define do
  factory :task do
    author_id { create(:author).id }
    title { Faker::Movie.title }
    description { Faker::Lorem.paragraph }
    completed_at { Date.today }
  end
end
