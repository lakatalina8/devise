require 'spec_helper'

describe "graphics/index" do
  before(:each) do
    assign(:graphics, [
      stub_model(Graphic,
        :context_element_id => 1
      ),
      stub_model(Graphic,
        :context_element_id => 1
      )
    ])
  end

  it "renders a list of graphics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
