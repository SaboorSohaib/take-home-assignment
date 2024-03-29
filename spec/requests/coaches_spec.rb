require 'rails_helper'

RSpec.describe 'Coaches', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/coaches/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/coaches/show'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/coaches/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/coaches/new'
      expect(response).to have_http_status(:success)
    end
  end
end
