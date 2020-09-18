FactoryBot.define do
  factory :doctor_schedule do
    association :doctor
    association :hospital
    day { "#{DateTime.now.wday}" }
    start_time { "#{DateTime.now.hour + 1}:00" }
    end_time { "#{DateTime.now.hour + 7}:00" }
  end
end