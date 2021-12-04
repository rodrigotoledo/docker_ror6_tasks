FactoryBot.define do
  factory :author do
    name { Faker::Name.name_with_middle }
    email { Faker::Internet.email }

    # before(:create) do |author, evaluator|
    #   author.avatar.attach(io: Rails.root.join('spec/support/avatar.png'), filename: 'avatar.png')
    # end
  end
end
