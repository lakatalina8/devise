require "spec_helper"

describe ContextElementsController do
  describe "routing" do

    it "routes to #index" do
      get("/context_elements").should route_to("context_elements#index")
    end

    it "routes to #new" do
      get("/context_elements/new").should route_to("context_elements#new")
    end

    it "routes to #show" do
      get("/context_elements/1").should route_to("context_elements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/context_elements/1/edit").should route_to("context_elements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/context_elements").should route_to("context_elements#create")
    end

    it "routes to #update" do
      put("/context_elements/1").should route_to("context_elements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/context_elements/1").should route_to("context_elements#destroy", :id => "1")
    end

  end
end
