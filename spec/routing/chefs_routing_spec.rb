require "spec_helper"

describe ChefsController do
  describe "routing" do

    it "routes to #index" do
      get("/chefs").should route_to("chefs#index")
    end

    it "routes to #new" do
      get("/chefs/new").should route_to("chefs#new")
    end

    it "routes to #show" do
      get("/chefs/1").should route_to("chefs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/chefs/1/edit").should route_to("chefs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/chefs").should route_to("chefs#create")
    end

    it "routes to #update" do
      put("/chefs/1").should route_to("chefs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/chefs/1").should route_to("chefs#destroy", :id => "1")
    end

  end
end
