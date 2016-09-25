require "rails_helper"

RSpec.describe BroadcastersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/broadcasters").to route_to("broadcasters#index")
    end

    it "routes to #new" do
      expect(:get => "/broadcasters/new").to route_to("broadcasters#new")
    end

    it "routes to #show" do
      expect(:get => "/broadcasters/1").to route_to("broadcasters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/broadcasters/1/edit").to route_to("broadcasters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/broadcasters").to route_to("broadcasters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/broadcasters/1").to route_to("broadcasters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/broadcasters/1").to route_to("broadcasters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/broadcasters/1").to route_to("broadcasters#destroy", :id => "1")
    end

  end
end
