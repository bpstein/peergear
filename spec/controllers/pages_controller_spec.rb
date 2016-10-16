require "rails_helper"

RSpec.describe PagesController, :type => :controller do

  let(:room) { FactoryGirl.create :room }
  let(:user) { FactoryGirl.create :user }
  
  before(:each) do
    DatabaseCleaner.clean 
  end

  describe "GET #index" do
    it "returns http success" do 
      get :home
      expect(response).to have_http_status(:success)
    end

    it "shows a list of rooms" do 
      user = User.create! email: "testuser@test.com", fullname: "John Smith", password: "123456", password_confirmation: "123456"
      room = Room.create! home_type: 'apartment', room_type: "private", accommodate: "3", bed_room: "3", bath_room: "2", listing_name: "Nice Penthouse", summary: "Come stay at my place", address: "123 Example Street", price: 400, user: user
      get :home, params: { id: 1 }
      expect(response).to have_http_status(:success)
    end
  end
end


