require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  let(:user) { create :user }

  before do
    sign_up
  end

  feature 'User sign up' do 
    scenario 'User can sign up' do 
      expect(response).to have_http_status(:success)
    end
  end

  feature 'User is created' do 
    scenario 'User can be created' do 
      expect do 
        post :create, user: Factory.attribute_for(:user)
        response.should redirect_to root_url
      end
    end
  end
end