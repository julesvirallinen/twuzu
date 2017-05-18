require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #index" do
    it "redirects if not admin" do
      get :index
      expect(response).to have_http_status(302)
    end

    it "success if logged in admin" do
      user = create :user, admin: true
      sign_in(user)
      get :index
      expect(response).to have_http_status(200)


    end
  end

end
