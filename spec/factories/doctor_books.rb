FactoryBot.define do
  factory :doctor_book do
    association :user
    date { "#{DateTime.now}" }
  end
end