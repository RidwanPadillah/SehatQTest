require 'rails_helper'

RSpec.describe Hospital, type: :model do
  it { should have_many(:doctor_hospitals).dependent(:destroy) }
  it { should have_many(:doctor_books).dependent(:destroy) }
  it { should have_many(:doctor_schedules).dependent(:destroy) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:address) }
end
