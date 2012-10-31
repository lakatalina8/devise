require 'spec_helper'

describe "graphics/show" do
  before(:each) do
    @graphic = assign(:graphic, stub_model(Graphic,
      :content_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
