require 'rails_helper'

RSpec.describe "UserPages", :type => :request do
  describe "user_pages" do
    subject{page}
    describe"signup page" do
      before{visitsignup_path}
      it{should have_content('Sign up')}
      it{shuld have_title(full_title('Sign up'))}
    end
  end
end
