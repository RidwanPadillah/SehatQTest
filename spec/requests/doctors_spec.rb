require 'rails_helper'

RSpec.describe 'Doctor API', type: :request do
  # initialize test data 
  let!(:doctors) { create_list(:doctor, 10) }
  let(:doctor_id) { doctors.first.id }

  # Test suite for GET /doctors
  describe 'GET /doctors' do
    # make HTTP get request before each example
    before { get '/doctors' }

    it 'returns doctors' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end