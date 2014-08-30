require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do
  describe "static_pages" do
    it "should have the content 'sample app'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

  end
   describe "Help Page" do
     it "should have the content 'Help'" do
       visit '/static_pages/help'
       expect(page).to have_content('Help')
     end
   end
   describe 'About Page' do
     it "should have the content 'about us'" do
       visit '/static_pages/about'
       expect(page).to have_content('About Us')
     end
   end
end