require 'rails_helper'
require 'database_cleaner'

feature "User can sign in and sign out" do 
  context "User not signed in" do 
    before do 
      DatabaseCleaner.clean
    end

    it "should display 'sign up' and 'log in' links" do 
      visit('/')
      expect(page.find('#navbar')).to have_link('Sign Up')
      expect(page.find('#navbar')).to have_link('Log In')
    end

    it "should not display 'log out' link" do 
      visit('/')
      expect(page.find('#navbar')).not_to have_link('Log Out')
    end

    it "should prompt login when accessing restricted link" do
      visit('/')
      click_link('Become a Host') 
      expect(page).to have_content('Log In')
      # expect(page).to have_content('You need to sign in or sign up before continuing.')
    end
  end

  context "User signed in" do 
    before do 
      DatabaseCleaner.clean
    end

    it "should not display 'sign up' or log in' links" do 
      sign_up
      expect(page.find('#navbar')).not_to have_link('Sign Up')
      expect(page.find('#navbar')).not_to have_link('Log In')
    end
    
    it "should display 'log out' link" do 
      DatabaseCleaner.clean
      sign_up
      expect(page.find('#navbar')).to have_link('Log Out')
    end

    it "should display the user's name and avatar on login" do 
      DatabaseCleaner.clean
      visit('/')
      click_link('Sign Up')
      fill_in('Full Name', with: 'John Smith')
      fill_in('Email', with: 'user@example9.com')
      fill_in('Password', with: 'Password1')
      fill_in('Confirm Password', with: 'Password1')
      click_button('Sign up')
      expect(page.find('#navbar')).to have_content("John Smith")
      expect(page.find('#navbar')).to have_css('img.avatar-small')
    end
  end
end