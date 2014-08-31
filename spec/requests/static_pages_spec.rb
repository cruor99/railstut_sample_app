require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do
  describe "static_pages" do
    it "should have the content 'sample app'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end
    it "should have the title 'home'" do
      visit root_path 
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end
   describe "Help Page" do
     it "should have the content 'Help'" do
       visit help_path 
       expect(page).to have_content('Help')
     end
     it "should have the title 'Help'" do
       visit help_path 
       expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
     end
   end
   describe 'About Page' do
     it "should have the content 'About us'" do
       visit about_path
       expect(page).to have_content('About Us')
     end
     it "should have the title 'About Us'" do
       visit about_path 
       expect(page).to have_title('Ruby on Rails Tutorial Sample App | About Us')
     end
   end
  describe 'Contact Page' do
    it "should have the content 'Contact' "do
      visit contact_path 
      expect(page).to have_content('Contact')
    end
    it "should have the title 'Contact'" do
      visit contact_path 
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end
