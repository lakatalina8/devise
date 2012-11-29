require 'spec_helper'

describe "points/show" do
  before(:each) do
    @point = assign(:point, stub_model(Point,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
