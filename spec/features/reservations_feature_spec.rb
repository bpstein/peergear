require 'rails_helper'
require 'database_cleaner'

feature "Reservations are added to rooms" do 
  context "User adds a reservation" do 
    before do 
      DatabaseCleaner.clean
      user   = User.create! fullname: 'John Smith', email: 'johnsmith@email.com', password: 'Password', password_confirmation: 'Password'
      user_2 = User.create! fullname: 'Jane Jones', email: 'janejones@email.com', password: 'Password', password_confirmation: 'Password'
      room   = Room.create! id: 1, home_type: "apartment", room_type: "private", accommodate: "3", bed_room: "3", bath_room: "2", listing_name: "Nice Penthouse", summary: "Come stay at my place", address: "123 Example Street", price: 400, user: user
      reservation = Reservation.create! id: 1, start_date: "2016-10-16 13:55:45", end_date: "2016-10-16 13:55:45", price: 200, total: 2, room: room, user: user_2
    end

    it "adds a user's reservation to another user's listing" do 
      visit('/')
      log_in
      click_link_or_button('John Smith')
      visit('/your_reservations')
      expect(page).to have_content('16-OCT-2016')
    end
  end
end