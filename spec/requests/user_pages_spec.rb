require 'rails_helper'

RSpec.describe "UserPages", :type => :request do
  describe "user_pages" do
    subject{page}
    describe"signup page" do
      before{visit signup_path}
      it{should have_content('Sign up')}
    end
  end
end
