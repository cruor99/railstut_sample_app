require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do
  describe "static_pages" do
    it "should have the content 'sample app'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have the title 'home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end
   describe "Help Page" do
     it "should have the content 'Help'" do
       visit '/static_pages/help'
       expect(page).to have_content('Help')
     end
     it "should have the title 'Help'" do
       visit '/static_pages/help'
       expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
     end
   end
   describe 'About Page' do
     it "should have the content 'about us'" do
       visit '/static_pages/about'
       expect(page).to have_content('About Us')
     end
     it "should have the title 'About Us'" do
       visit '/static_pages/about'
       expect(page).to have_title('Ruby on Rails Tutorial Sample App | About Us')
     end
   end
end
