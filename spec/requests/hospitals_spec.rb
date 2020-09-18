require 'rails_helper'

RSpec.describe 'Hospital API', type: :request do
  # initialize test data 
  let!(:hospitals) { create_list(:hospital, 10) }
  let(:hospital_id) { hospitals.first.id }

  # Test suite for GET /hospitals
  describe 'GET /hospitals' do
    # make HTTP get request before each example
    before { get '/hospitals' }

    it 'returns hospitals' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end