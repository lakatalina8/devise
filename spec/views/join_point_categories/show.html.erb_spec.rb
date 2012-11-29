require 'spec_helper'

describe "join_point_categories/show" do
  before(:each) do
    @join_point_category = assign(:join_point_category, stub_model(JoinPointCategory,
      :point_id => 1,
      :tcategory_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
