require 'spec_helper'
require 'rails_helper'

describe Photo do
  let(:room) { FactoryGirl.create :room}
  let(:user) { FactoryGirl.create :user}

  it { should belong_to(:room) }
end