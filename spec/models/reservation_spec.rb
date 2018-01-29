require 'rails_helper'

describe Reservation do 
  before :each do
    DatabaseCleaner.clean 
  end

  let(:user) { FactoryBot.create :user}
  let(:room) { FactoryBot.create :room, user: user}

  it { should belong_to(:user) }
  it { should belong_to(:room) }

  it 'creates a new reservation' do
    expect{ FactoryBot.create(:reservation, user: user, room: room) }.to change{ Reservation.count }.by(1)
  end
end

