require 'rails_helper'

RSpec.describe Doctor, type: :model do
  it { should have_many(:doctor_hospitals).dependent(:destroy) }
  it { should have_many(:doctor_books).dependent(:destroy) }
  it { should have_many(:doctor_schedules).dependent(:destroy) }

  it { should validate_presence_of(:name) }
end
