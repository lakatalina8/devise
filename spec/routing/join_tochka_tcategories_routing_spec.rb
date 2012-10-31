require "spec_helper"

describe JoinTochkaTcategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/join_tochka_tcategories").should route_to("join_tochka_tcategories#index")
    end

    it "routes to #new" do
      get("/join_tochka_tcategories/new").should route_to("join_tochka_tcategories#new")
    end

    it "routes to #show" do
      get("/join_tochka_tcategories/1").should route_to("join_tochka_tcategories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/join_tochka_tcategories/1/edit").should route_to("join_tochka_tcategories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/join_tochka_tcategories").should route_to("join_tochka_tcategories#create")
    end

    it "routes to #update" do
      put("/join_tochka_tcategories/1").should route_to("join_tochka_tcategories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/join_tochka_tcategories/1").should route_to("join_tochka_tcategories#destroy", :id => "1")
    end

  end
end
