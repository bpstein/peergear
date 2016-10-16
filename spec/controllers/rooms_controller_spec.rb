require "rails_helper"

RSpec.describe RoomsController, :type => :controller do

  let(:room) { FactoryGirl.create :room }
  let(:user) { FactoryGirl.create :user }
  
  before(:each) do
    DatabaseCleaner.clean 
  end

  describe "GET #index" do
    it "returns http success" do 
      get :index
      expect(response).to have_http_status(302)
    end
  end

  # describe "GET #show" do 
  #   it "returns http success" do 
  #     get :show, params: { id: 1 }
  #     expect(response).to have_http_status(:success)
  #     expect(assigns(:room)).to eq room
  #   end
  # end

  # describe "GET index" do
  #   it "populates with a list of rooms" do
  #     @user = FactoryGirl.build(:user)
  #     get :index
  #     expect(:room).to eq([room])
  #   end
  # end
end