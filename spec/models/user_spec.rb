describe User do
  let(:facebook_user) { FactoryGirl.create :user}

  it 'creates new user using conventional signup' do
    expect{ FactoryGirl.create(:user) }.to change{ User.count }.by(1)
  end

  # it 'creates new omniauth user' do
  #   expect{ FactoryGirl.create(:facebook_user) }.to change{ User.count }.by(1)
  # end
end