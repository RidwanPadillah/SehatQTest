FactoryBot.define do
  factory :doctor_book do
    association :doctor
    association :hospital
    association :user
    date { "#{DateTime.now}" }
  end
end