require 'spec_helper'

describe "tcategories/show" do
  before(:each) do
    @tcategory = assign(:tcategory, stub_model(Tcategory,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
