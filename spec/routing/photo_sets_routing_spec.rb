require "spec_helper"

describe PhotoSetsController do
  describe "routing" do

    it "routes to #index" do
      get("/photo_sets").should route_to("photo_sets#index")
    end

    it "routes to #new" do
      get("/photo_sets/new").should route_to("photo_sets#new")
    end

    it "routes to #show" do
      get("/photo_sets/1").should route_to("photo_sets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/photo_sets/1/edit").should route_to("photo_sets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/photo_sets").should route_to("photo_sets#create")
    end

    it "routes to #update" do
      put("/photo_sets/1").should route_to("photo_sets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/photo_sets/1").should route_to("photo_sets#destroy", :id => "1")
    end

  end
end
