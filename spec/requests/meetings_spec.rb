require 'rails_helper'

RSpec.describe "Meetings", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/meetings/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/meetings/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/meetings/new"
      expect(response).to have_http_status(:success)
    end
  end

end
