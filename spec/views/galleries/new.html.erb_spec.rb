require 'spec_helper'

describe "galleries/new" do
  before(:each) do
    assign(:gallery, stub_model(Gallery,
      :context_element_id => 1
    ).as_new_record)
  end

  it "renders new gallery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => galleries_path, :method => "post" do
      assert_select "input#gallery_content_id", :name => "gallery[content_id]"
    end
  end
end
