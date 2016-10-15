require 'rails_helper'
require 'database_cleaner'

# feature 'rooms' do
#   context 'no rooms have been added' do
#     scenario 'should display a prompt to add a room' do
#       visit '/rooms'
#       expect(page).to have_content 'No rooms yet!'
#       expect(page).to have_link 'Add a room now!'
#     end
#   end
# end

feature 'Creating new rooms' do 
  # context 'user can add a new room' do 
  #   it 'should display a new room once a new room is submitted' do
  #     add_room
  #     expect(current_path).to eq('/rooms')
  #     expect(page).to have_css("img[src*='Tokyo.jpg']")
  #   end
  # end

  # context 'user can edit existing rooms' do 
  #   it 'should update the content of a room once edit form is submitted' do 
  #     edit_room
  #     expect(page).to have_content('$250')
  #   end
  # end
end

feature 'Displaying list of rooms' do 
  context 'user can view all rooms they have listed' do 
    it "should list all the user's listings" do
      # DatabaseCleaner.clean
      # visit('/')
      # click_link('Sign Up')
      # fill_in('Full Name', with: 'John Smith')
      # fill_in('Email', with: 'user@example8.com')
      # fill_in('Password', with: 'Password1')
      # fill_in('Confirm Password', with: 'Password1')
      # click_button('Sign up')-
      # add_room
      # visit('/rooms')
      # expect(page).to have_content('Nice central crash pad')
    end
  end
end