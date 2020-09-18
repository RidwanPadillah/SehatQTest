class HospitalsController < ApplicationController
    # GET /hospitals
    def index
        @hospitals = Hospital.all
        json_response(@hospitals)
    end
end
