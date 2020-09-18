# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
include FactoryBot::Syntax::Methods
FactoryBot.create_list(:hospital, 10)
FactoryBot.create_list(:doctor, 10)
FactoryBot.create_list(:doctor_schedule, 10)
FactoryBot.create(:hospital) do |hospital|
FactoryBot.create(:doctor) do |doctor|
    FactoryBot.create_list(:doctor_book, 10, hospital: hospital, doctor: doctor)
end
end