class SchedulesController < ApplicationController
    # GET /schedules
    def index
        @schedules = Doctor.includes(:doctor_books).all
        json_response(@schedules.doctor_books)
    end
end
