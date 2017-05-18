require 'rails_helper'

RSpec.describe "tzeets/index.html.slim", type: :view do
  it 'does not have new tweet box for logged out users' do
    visit root_path
    expect(page).not_to have_content('Compose a tweet')
  end
  describe 'creating a tzeet' do
    before :each do
      user = build :user
      login_as(user)
      visit root_path
    end
    it 'logged in user has field for creating tzeet' do
      expect(page).to have_content('Compose a tzeet')
    end

  end

  after(:all) { User.destroy_all }
end
