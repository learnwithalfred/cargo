require 'rails_helper'

RSpec.describe 'AdminDashboards', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/admin_dashboard/index'
      expect(response).to have_http_status(:success)
    end
  end
end
