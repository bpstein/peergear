require 'rails_helper'

feature "User can sign in and sign out" do 
  context "User not signed in" do 
    it "should display 'sign up' and 'log in' links" do 
      visit('/')
      expect(page).to have_link('Sign Up')
      expect(page).to have_link('Log In')
    end

    it "should not display 'log out' link" do 
      visit('/')
      expect(page).not_to have_link('Log Out')
    end
  end

  context "User signed in" do 
    before do 
      sign_up
    end

    it "should not display 'sign up' or log in' links" do 
      expect(page).not_to have_link('Sign Up')
      expect(page).not_to have_link('Log In')
    end
    
    it "should display 'log out' link" do 
      expect(page).to have_link('Log Out')
    end
  end
end