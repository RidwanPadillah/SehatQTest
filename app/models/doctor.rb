class Doctor < ApplicationRecord
    has_many :doctor_hospitals, dependent: :destroy
    has_many :doctor_schedules, dependent: :destroy
    has_many :doctor_books, dependent: :destroy

    validates_presence_of :name
end
