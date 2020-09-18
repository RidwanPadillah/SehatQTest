class BooksController < ApplicationController
    # POST /books
    def create
        book_date = DateTime.parse(params[:date])
        
        #check doctor schedule
        @doctor = DoctorSchedule.find_by(doctor_id: params[:doctor_id], hospital_id: params[:hospital_id], day: book_date.wday)
        
        if @doctor.blank?
            json_response({message: 'error'}, :not_found)
        else
            #check booking capacity
            @book = DoctorBook.where(:doctor_id => params[:doctor_id]).where(:hospital_id => params[:hospital_id]).where('date BETWEEN ? AND ?', book_date.beginning_of_day, book_date.end_of_day)
            if (@book.count >= 10)
                json_response({message: 'Full Booking'}, :locked)
            else
                #check booking time
                doctor_schedule = @doctor.start_time.strftime('%H:%M:%S')
                book_time = book_date.strftime('%Y-%m-%d %H:%M:%S')
                start_time = "#{book_date.strftime('%Y-%m-%d')} #{doctor_schedule}"
                minutes = ((Time.parse(book_time) - Time.parse(start_time)) / 60).to_i

                #when booking time less than 30 minutes
                if (minutes < -30)
                    json_response({message: 'Booking is closed'}, :not_acceptable)
                else
                    @book = DoctorBook.create!(book_params)
                    json_response(@book)
                end
            end
        end
    end

    def book_params
        params.permit(:date, :doctor_id, :hospital_id, :user_id)
    end
end
