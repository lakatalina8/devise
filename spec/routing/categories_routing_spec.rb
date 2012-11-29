require "spec_helper"

describe NewCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/new_categories").should route_to("new_categories#index")
    end

    it "routes to #new" do
      get("/new_categories/new").should route_to("new_categories#new")
    end

    it "routes to #show" do
      get("/new_categories/1").should route_to("new_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/new_categories/1/edit").should route_to("new_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/new_categories").should route_to("new_categories#create")
    end

    it "routes to #update" do
      put("/new_categories/1").should route_to("new_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/new_categories/1").should route_to("new_categories#destroy", :id => "1")
    end

  end
end
