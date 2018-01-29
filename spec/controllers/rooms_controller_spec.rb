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

  # describe "GET #show" do 
  #   it "returns http success" do 
  #     get :show, params: { id: 1 }
  #     expect(response).to have_http_status(:success)
  #     expect(assigns(:room)).to eq room
  #   end
  # end

  # describe "GET index" do
  #   it "populates with a list of rooms" do
  #     @user = FactoryBot.build(:user)
  #     get :index
  #     expect(:room).to eq([room])
  #   end
  # end
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








