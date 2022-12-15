require 'rails_helper'

RSpec.describe 'Quotes', type: :request do
  describe 'GET /index' do 
    before(:each) do
      Quote.create text: "Test Quote", author: 'Anonymous'
      get root_path
    end

    it 'should return http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render correct template' do
      expect(response).to render_template(:index)
    end

    it "should render page contenting 'Quotes'" do
      expect(response.body).to include('Generate Random Quotes')
    end
  end
end
