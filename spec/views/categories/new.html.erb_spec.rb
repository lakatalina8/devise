require 'spec_helper'

describe "new_categories/new" do
  before(:each) do
    assign(:new_category, stub_model(NewCategory,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categories_path, :method => "post" do
      assert_select "input#category_name", :name => "category[name]"
    end
  end
end
