require 'rails_helper'

RSpec.describe DoctorHospital, type: :model do
  it { should belong_to(:doctor) }
  it { should belong_to(:hospital) }
end
