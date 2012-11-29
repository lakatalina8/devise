require 'spec_helper'

describe "new_categories/show" do
  before(:each) do
    @new_category = assign(:new_category, stub_model(NewCategory,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
