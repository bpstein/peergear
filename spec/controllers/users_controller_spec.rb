require 'rails_helper'

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