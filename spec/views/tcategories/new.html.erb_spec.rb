require 'spec_helper'

describe "point_categories/new" do
  before(:each) do
    assign(:point_category, stub_model(PointCategory,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new tcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tcategories_path, :method => "post" do
      assert_select "input#tcategory_name", :name => "tcategory[name]"
    end
  end
end
