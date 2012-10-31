require 'spec_helper'

describe "tcategories/index" do
  before(:each) do
    assign(:tcategories, [
      stub_model(Tcategory,
        :name => "Name"
      ),
      stub_model(Tcategory,
        :name => "Name"
      )
    ])
  end

  it "renders a list of tcategories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
