class DoctorsController < ApplicationController
    # GET /doctors
    def index
        @doctors = Doctor.all
        json_response(@doctors)
    end
end
