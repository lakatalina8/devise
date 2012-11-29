require 'spec_helper'

describe "new_categories/edit" do
  before(:each) do
    @new_category = assign(:new_category, stub_model(NewCategory,
      :name => "MyString"
    ))
  end

  it "renders the edit category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categories_path(@new_category), :method => "post" do
      assert_select "input#category_name", :name => "category[name]"
    end
  end
end
