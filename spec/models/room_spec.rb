require 'spec_helper'
require 'rails_helper'

describe Room do
  let(:room) { FactoryBot.create :room}
  let(:user) { FactoryBot.create :user}

  it { should belong_to(:user) }
  it { should have_many (:reservations) }
  it { should have_many (:photos) }
  it { should validate_presence_of :home_type }
  it { should validate_presence_of :room_type }
  it { should validate_presence_of :accommodate }
  it { should validate_presence_of :bed_room }
  it { should validate_presence_of :bath_room }
  it { should validate_presence_of :listing_name }
  it { should validate_presence_of :summary }
  it { should validate_presence_of :address }
  it { should validate_numericality_of :price }

  it 'creates a new room' do
    expect{ FactoryBot.create(:room, user: user) }.to change{ Room.count }.by(1)
  end

  #  it 'returns average rating' do
  #   expect(subject.average_rating).to be_zero
  # end
end

