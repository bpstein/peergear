require 'spec_helper'
require 'rails_helper'

describe Photo do
  let(:room) { FactoryBot.create :room}
  let(:user) { FactoryBot.create :user}

  it { should belong_to(:room) }
end