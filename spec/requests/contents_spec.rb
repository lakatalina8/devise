require 'spec_helper'

describe "Contents" do
  describe "GET /context_elements" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get contents_path
      response.status.should be(200)
    end
  end
end
