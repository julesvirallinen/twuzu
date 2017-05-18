require "rails_helper"

RSpec.describe TzeetsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tzeets").to route_to("tzeets#index")
    end

    it "routes to #new" do
      expect(:get => "/tzeets/new").to route_to("tzeets#new")
    end

    it "routes to #show" do
      expect(:get => "/tzeets/1").to route_to("tzeets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tzeets/1/edit").to route_to("tzeets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tzeets").to route_to("tzeets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tzeets/1").to route_to("tzeets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tzeets/1").to route_to("tzeets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tzeets/1").to route_to("tzeets#destroy", :id => "1")
    end

  end
end
