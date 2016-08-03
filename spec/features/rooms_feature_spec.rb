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
  context 'user can add a new room' do 
    it 'should display a new room once a new room is submitted' do
      add_room
      expect(current_path).to eq('/rooms')
    end
  end

  context 'user can edit existing rooms' do 
    it 'should update the content of a room once edit form is submitted' do 
      edit_room
      expect(page).to have_content '$250'
    end
  end
end