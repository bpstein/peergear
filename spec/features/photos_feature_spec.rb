require 'rails_helper'
require 'database_cleaner'

feature 'Deleting room photos' do 
  context 'user can delete a room photo' do 
    it 'should delete a room photo once icon is clicked' do
      add_room
      within '#x-icon-box' do 
        find('.fa fa-times fa-lg').click
      end
      expect(page).not_to have_css("img[src*='Tokyo.jpg']")
    end
  end
end