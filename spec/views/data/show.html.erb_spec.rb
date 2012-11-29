require 'spec_helper'

describe "new_items/show" do
  before(:each) do
    @new_item = assign(:new_item, stub_model(Datum,
      :name => "Name",
      :category_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
