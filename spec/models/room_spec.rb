require 'spec_helper'
require 'rails_helper'

describe Room do
  let(:room) { FactoryGirl.create :room}
  let(:user) { FactoryGirl.create :user}

  it { should belong_to(:user) }

  it 'creates a new room' do
    expect{ FactoryGirl.create(:room, user: user) }.to change{ Room.count }.by(1)
  end
end