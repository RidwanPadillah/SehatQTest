require 'rails_helper'

RSpec.describe 'Book API', type: :request do
  # initialize test data 
  let!(:doctor_schedules) { create_list(:doctor_schedule, 1) }

  let(:doctor_id) { doctor_schedules.first.doctor_id }
  let(:hospital_id) { doctor_schedules.first.hospital_id }
  let!(:users) { create_list(:user, 1) }
  let(:user_id) { doctor_schedules.first.id }
  
  # Test suite for POST /books
  describe 'POST /books' do
    

    context 'when request is valid' do
      let(:date_now) { (Time.now + 3600).strftime("%d/%m/%Y %H:%M") }
      let(:valid_attributes) do
        { date: date_now, doctor_id: doctor_id, hospital_id: hospital_id, user_id: user_id }
      end
      before { post '/books', params: valid_attributes, headers: headers }

      it 'creates a books' do
        expect(Time.parse(json['date']).strftime('%d-%m-%Y %H:%M')).to eq(Time.parse(date_now).strftime('%d-%m-%Y %H:%M'))
      end
    end

    context 'when request is valid but late booking' do
      let(:date_late) { (Time.now - 3600).strftime("%d/%m/%Y %H:%M") }
      let(:valid_late_attributes) do
        { date: date_late, doctor_id: doctor_id, hospital_id: hospital_id, user_id: user_id }
      end
      before { post '/books', params: valid_late_attributes, headers: headers }

      it 'returns status code 406' do
        expect(response).to have_http_status(406)
      end
    end

    context 'when request is valid but not found' do
      let(:date_late) { (Time.now - 3600*25).strftime("%d/%m/%Y %H:%M") }
      let(:valid_late_attributes) do
        { date: date_late, doctor_id: doctor_id, hospital_id: hospital_id, user_id: user_id }
      end
      before { post '/books', params: valid_late_attributes, headers: headers }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
    end

    context 'when request is valid full booking' do
      let!(:doctor_books) { create_list(:doctor_book, 10, doctor_id: doctor_id, hospital_id: hospital_id) }
      let(:date_now) { (Time.now + 3600).strftime("%d/%m/%Y %H:%M") }
      let(:valid_attributes) do
        { date: date_now, doctor_id: doctor_id, hospital_id: hospital_id, user_id: user_id }
      end
      before { post '/books', params: valid_attributes, headers: headers }

      it 'returns status code 423' do
        expect(response).to have_http_status(423)
      end
    end
  end
end