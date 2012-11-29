require 'spec_helper'

describe "point_categories/show" do
  before(:each) do
    @point_category = assign(:point_category, stub_model(PointCategory,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
