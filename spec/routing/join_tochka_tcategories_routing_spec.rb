require "spec_helper"

describe JoinPointCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/join_point_categories").should route_to("join_point_categories#index")
    end

    it "routes to #new" do
      get("/join_point_categories/new").should route_to("join_point_categories#new")
    end

    it "routes to #show" do
      get("/join_point_categories/1").should route_to("join_point_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/join_point_categories/1/edit").should route_to("join_point_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/join_point_categories").should route_to("join_point_categories#create")
    end

    it "routes to #update" do
      put("/join_point_categories/1").should route_to("join_point_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/join_point_categories/1").should route_to("join_point_categories#destroy", :id => "1")
    end

  end
end
