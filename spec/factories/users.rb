FactoryBot.define do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  factory :user do
    name { "#{first_name} #{last_name}" }
    email { "#{first_name}@example.com" }
    password { "#{first_name}#{last_name}" }
  end
end