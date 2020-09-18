require 'rails_helper'

RSpec.describe DoctorBook, type: :model do
  it { should belong_to(:doctor) }
  it { should belong_to(:hospital) }
  it { should belong_to(:user) }

  it { should validate_presence_of(:date) }
end
