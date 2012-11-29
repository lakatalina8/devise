require 'spec_helper'

describe "context_elements/index" do
  before(:each) do
    assign(:context_elements, [
      stub_model(ContextElement,
        :point_id => 1,
        :data_id => 2
      ),
      stub_model(ContextElement,
        :point_id => 1,
        :data_id => 2
      )
    ])
  end

  it "renders a list of context_elements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
