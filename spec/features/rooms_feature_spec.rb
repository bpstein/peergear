require 'rails_helper'
require 'database_cleaner'

feature 'Creating new rooms' do 
  let(:room) { FactoryBot.create :room } 
  let(:user) { FactoryBot.create :user }

  context 'No rooms exist yet' do  
    it 'indicates there are no rooms' do 
      visit '/'
      expect(page).to have_content('No rooms yet!')
      expect(page).not_to have_content('Nice Penthouse')
    end
  end
  
  context 'Rooms exist' do 
    before do 
      DatabaseCleaner.clean
      user = User.create! fullname: 'John Smith', email: 'johnsmith@email.com', password: 'Password', password_confirmation: 'Password'
      room = Room.create! id: 1, home_type: "apartment", room_type: "private", accommodate: "3", bed_room: "3", bath_room: "2", listing_name: "Nice Penthouse", summary: "Come stay at my place", address: "123 Example Street", price: 400, user: user
    end
    
    it 'adds a new room' do  
      add_room
      visit '/'
      expect(page).to have_content('Nice Penthouse')
    end

    it "adds a room to the landlord's listings" do 
      visit '/rooms'
      log_in
      expect(page).to have_content('Your Listings')
      expect(page).to have_content('Nice Penthouse')
    end

    it 'edits a room' do 
      # visit '/rooms/1/'
      # expect(page).to have_content('Create your beautiful place')
      # expect(page).to have_content('Listing Name')
      # fill_in('Nice Penthouse', with: 'Big City House')
    end
  end

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