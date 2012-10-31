require 'spec_helper'

describe "tcategories/edit" do
  before(:each) do
    @tcategory = assign(:tcategory, stub_model(Tcategory,
      :name => "MyString"
    ))
  end

  it "renders the edit tcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tcategories_path(@tcategory), :method => "post" do
      assert_select "input#tcategory_name", :name => "tcategory[name]"
    end
  end
end
