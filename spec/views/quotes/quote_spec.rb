require 'rails_helper'

RSpec.describe 'quotes/index', type: :feature do
  describe 'Quote#index' do
    before(:each) do
      Quote.create text: "Test Quote", author: 'Anonymous'

      visit root_path
    end

    it 'can see a the quote' do
      expect(page).to have_content 'Test Quote'
      
    end

  end
end
