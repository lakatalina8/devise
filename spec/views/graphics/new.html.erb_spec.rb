require 'spec_helper'

describe "graphics/new" do
  before(:each) do
    assign(:graphic, stub_model(Graphic,
      :content_id => 1
    ).as_new_record)
  end

  it "renders new graphic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => graphics_path, :method => "post" do
      assert_select "input#graphic_content_id", :name => "graphic[content_id]"
    end
  end
end
