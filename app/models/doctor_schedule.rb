class DoctorSchedule < ApplicationRecord
  belongs_to :hospital
  belongs_to :doctor

  validates_presence_of :day, :start_time, :end_time
end
