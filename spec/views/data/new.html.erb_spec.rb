require 'spec_helper'

describe "new_items/new" do
  before(:each) do
    assign(:new_item, stub_model(Datum,
      :name => "MyString",
      :category_id => 1
    ).as_new_record)
  end

  it "renders new datum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => data_path, :method => "post" do
      assert_select "input#datum_name", :name => "datum[name]"
      assert_select "input#datum_category_id", :name => "datum[category_id]"
    end
  end
end
