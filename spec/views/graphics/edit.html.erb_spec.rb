require 'spec_helper'

describe "graphics/edit" do
  before(:each) do
    @graphic = assign(:graphic, stub_model(Graphic,
      :content_id => 1
    ))
  end

  it "renders the edit graphic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => graphics_path(@graphic), :method => "post" do
      assert_select "input#graphic_content_id", :name => "graphic[content_id]"
    end
  end
end
