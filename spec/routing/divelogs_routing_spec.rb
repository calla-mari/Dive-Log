require "rails_helper"

RSpec.describe DivelogsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/divelogs").to route_to("divelogs#index")
    end


    it "routes to #show" do
      expect(:get => "/divelogs/1").to route_to("divelogs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/divelogs").to route_to("divelogs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/divelogs/1").to route_to("divelogs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/divelogs/1").to route_to("divelogs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/divelogs/1").to route_to("divelogs#destroy", :id => "1")
    end

  end
end
