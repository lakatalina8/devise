require "spec_helper"

describe PointCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/point_categories").should route_to("point_categories#index")
    end

    it "routes to #new" do
      get("/point_categories/new").should route_to("point_categories#new")
    end

    it "routes to #show" do
      get("/point_categories/1").should route_to("point_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/point_categories/1/edit").should route_to("point_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/point_categories").should route_to("point_categories#create")
    end

    it "routes to #update" do
      put("/point_categories/1").should route_to("point_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/point_categories/1").should route_to("point_categories#destroy", :id => "1")
    end

  end
end
