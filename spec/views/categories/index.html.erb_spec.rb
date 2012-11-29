require 'spec_helper'

describe "new_categories/index" do
  before(:each) do
    assign(:new_categories, [
      stub_model(NewCategory,
        :name => "Name"
      ),
      stub_model(NewCategory,
        :name => "Name"
      )
    ])
  end

  it "renders a list of new_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
