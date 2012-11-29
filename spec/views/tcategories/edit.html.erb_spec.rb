require 'spec_helper'

describe "point_categories/edit" do
  before(:each) do
    @point_category = assign(:point_category, stub_model(PointCategory,
      :name => "MyString"
    ))
  end

  it "renders the edit tcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tcategories_path(@point_category), :method => "post" do
      assert_select "input#tcategory_name", :name => "tcategory[name]"
    end
  end
end
