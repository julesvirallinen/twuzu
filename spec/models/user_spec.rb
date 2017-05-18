require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'new valid user' do
    let (:user) { create :user }
    it 'is created successfully' do
      expect(user).to be_valid
    end

    it 'has username set correctly' do
      expect(user.username).to eq('username')
    end

    it 'has email set correctly' do
      expect(user.email).to eq('user@user.com')
    end
  end

  it 'should have a valid factory' do
    expect(build :user).to be_valid
  end

  it 'should have a username' do
    expect(build :user, :username => '').to_not be_valid
  end

  it 'should have an email' do
    expect(build :user, :email => '').to_not be_valid
  end

end
