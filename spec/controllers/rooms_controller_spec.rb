require "rails_helper"

RSpec.describe RoomsController, :type => :controller do

  let(:room) { FactoryBot.create :room }
  let(:user) { FactoryBot.create :user }
  
  before(:each) do
    DatabaseCleaner.clean 
  end

  describe "GET #index" do
    it "returns http success" do
      sign_in FactoryBot.create(:user)
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #show" do 
    it "returns http success" do 
      user = User.create! email: "testuser@test.com", fullname: "John Smith", password: "123456", password_confirmation: "123456"
      room = Room.create! home_type: 'apartment', room_type: "private", accommodate: "3", bed_room: "3", bath_room: "2", listing_name: "Nice Penthouse", summary: "Come stay at my place", address: "123 Example Street", price: 400, user: user
      get :room, params: { id: 1 }
      expect(assigns(:room)).to eq room
    end
  end

  describe "GET index" do
    it "populates with a list of rooms" do
      user = User.create! email: "testuser@test.com", fullname: "John Smith", password: "123456", password_confirmation: "123456"
      @room = Room.create! home_type: 'apartment', room_type: "private", accommodate: "3", bed_room: "3", bath_room: "2", listing_name: "Nice Penthouse", summary: "Come stay at my place", address: "123 Example Street", price: 400, user: user
      get :index
      expect(:room).to eq @room
    end
  end
end

RSpec.describe UsersController, :type => :controller do
  # context 'when password is invalid' do 
  #   user = create(:user)
  #   post :create, session: { email: user.email, password: 'invalid' }
  #   expect(response).to render_template(:new)
  #   expect(flash[:notice]).to match(/^Email and password do not match/)
  # end

  # context 'when password is valid' do
  #   it 'sets the user in the session and redirects them to their dashboard' do
  #     user = create(:user)

  #     post :create, session: { email: user.email, password: user.password }

  #     expect(response).to redirect_to '/dashboard'
  #     expect(controller.current_user).to eq user
  #   end
  # end
end








