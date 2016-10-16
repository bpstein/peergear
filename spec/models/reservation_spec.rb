require 'rails_helper'

describe Reservation do 
  before :each do
    DatabaseCleaner.clean 
  end

  let(:user) { FactoryGirl.create :user}
  let(:room) { FactoryGirl.create :room, user: user}

  it { should belong_to(:user) }
  it { should belong_to(:room) }

  it 'creates a new reservation' do
    expect{ FactoryGirl.create(:reservation, user: user, room: room) }.to change{ Reservation.count }.by(1)
  end
end

