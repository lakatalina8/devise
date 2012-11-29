require 'spec_helper'

describe "context_elements/show" do
  before(:each) do
    @context_element = assign(:context_element, stub_model(ContextElement,
      :point_id => 1,
      :data_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
