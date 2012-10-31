require 'spec_helper'

describe "tochkas/index" do
  before(:each) do
    assign(:tochkas, [
      stub_model(Tochka,
        :name => "Name"
      ),
      stub_model(Tochka,
        :name => "Name"
      )
    ])
  end

  it "renders a list of tochkas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
