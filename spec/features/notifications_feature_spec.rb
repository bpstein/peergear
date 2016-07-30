require 'rails_helper'
require 'database_cleaner'

feature "User is notified of account status changes" do 
  context "User notified of successful signup" do 
    it "should display 'signup successful' message", :js => true do 
      DatabaseCleaner.clean
      visit('/')
      sign_up
      expect(page).to have_content('Welcome! You have signed up successfully.')
    end
  end

  context "User notified of successful signin" do 
    it "should display 'sign in successful' message", :js => true do 
      DatabaseCleaner.clean
      visit('/')
      log_in
      expect(page).to have_content('Signed in successfully.')
    end
  end
end
