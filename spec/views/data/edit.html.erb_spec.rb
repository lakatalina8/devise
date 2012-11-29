require 'spec_helper'

describe "new_items/edit" do
  before(:each) do
    @new_item = assign(:new_item, stub_model(Datum,
      :name => "MyString",
      :category_id => 1
    ))
  end

  it "renders the edit datum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => data_path(@new_item), :method => "post" do
      assert_select "input#datum_name", :name => "datum[name]"
      assert_select "input#datum_category_id", :name => "datum[category_id]"
    end
  end
end
