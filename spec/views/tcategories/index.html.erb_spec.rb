require 'spec_helper'

describe "point_categories/index" do
  before(:each) do
    assign(:point_categories, [
      stub_model(PointCategory,
        :name => "Name"
      ),
      stub_model(PointCategory,
        :name => "Name"
      )
    ])
  end

  it "renders a list of point_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
