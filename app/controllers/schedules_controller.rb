class SchedulesController < ApplicationController
    # GET /schedules
    def index
        @schedules = Doctor.joins(:doctor_books).all
        render json: @schedules, include: ['doctor_books']
    end
end
