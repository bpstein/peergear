require 'spec_helper'
require 'rails_helper'

describe User do
  before :each do
    @user = FactoryBot.build(:user)
  end
  # let(:facebook_user) { FactoryBot.create :user}
  let(:user) { FactoryBot.create :user}

  it { should have_many(:rooms) }
  it { should validate_presence_of(:fullname) }

  it 'creates new user using conventional signup' do
    expect{ FactoryBot.create(:user) }.to change{ User.count }.by(1)
  end

  # it 'creates user from omniauth callback' do
  #   nickname = OpenStruct.new({ nickname: "jsmith"})
  #   token = OpenStruct.new({ token: "fsd6fs5df6sd6f8a"})
  #   response = { provider: "Facebook", uid: "1246", info: nickname , credentials: token }
  #   auth = OpenStruct.new response
  #   expect( User.count ).to eq(0)
  #   expect{ User.from_omniauth(auth) }.to change{ User.count }.by(1)
  #   # expect{ User.from_omniauth(auth) }.to change{ User.count }.by(0)
  # end
end