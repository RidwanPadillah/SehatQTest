require 'rails_helper'

RSpec.describe DoctorSchedule, type: :model do
  it { should belong_to(:doctor) }
  it { should belong_to(:hospital) }

  it { should validate_presence_of(:day) }
  it { should validate_presence_of(:start_time) }
  it { should validate_presence_of(:end_time) }
end
