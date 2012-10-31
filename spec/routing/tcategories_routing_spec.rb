require "spec_helper"

describe TcategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/tcategories").should route_to("tcategories#index")
    end

    it "routes to #new" do
      get("/tcategories/new").should route_to("tcategories#new")
    end

    it "routes to #show" do
      get("/tcategories/1").should route_to("tcategories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tcategories/1/edit").should route_to("tcategories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tcategories").should route_to("tcategories#create")
    end

    it "routes to #update" do
      put("/tcategories/1").should route_to("tcategories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tcategories/1").should route_to("tcategories#destroy", :id => "1")
    end

  end
end
