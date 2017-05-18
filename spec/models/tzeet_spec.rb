require 'rails_helper'

RSpec.describe Tzeet, type: :model do
  it 'should have a valid factory' do
    expect(build :tzeet).to be_valid
  end

  it 'should not be created without user' do

  end

end
