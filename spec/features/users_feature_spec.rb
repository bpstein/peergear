require 'rails_helper'

feature "User can sign in and sign out" do 
  context "User not signed in" do 
    it "should display 'sign up' and 'log in' links" do 
      visit('/')
      expect(page).to have_link('Sign Up')
      expect(page).to have_link('Log In')
    end
  end

  context "User signed in" do 
  end
end