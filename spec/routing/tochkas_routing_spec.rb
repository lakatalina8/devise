require "spec_helper"

describe TochkasController do
  describe "routing" do

    it "routes to #index" do
      get("/tochkas").should route_to("tochkas#index")
    end

    it "routes to #new" do
      get("/tochkas/new").should route_to("tochkas#new")
    end

    it "routes to #show" do
      get("/tochkas/1").should route_to("tochkas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tochkas/1/edit").should route_to("tochkas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tochkas").should route_to("tochkas#create")
    end

    it "routes to #update" do
      put("/tochkas/1").should route_to("tochkas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tochkas/1").should route_to("tochkas#destroy", :id => "1")
    end

  end
end
