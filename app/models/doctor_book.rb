class DoctorBook < ApplicationRecord
  belongs_to :user
  belongs_to :hospital
  belongs_to :doctor

  validates_presence_of :date
end
