require 'spec_helper'

describe "JoinTochkaTcategories" do
  describe "GET /join_tochka_tcategories" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get join_tochka_tcategories_path
      response.status.should be(200)
    end
  end
end
