require 'spec_helper'

describe "contents/new" do
  before(:each) do
    assign(:content, stub_model(Content,
      :tochka_id => 1,
      :data_id => 1
    ).as_new_record)
  end

  it "renders new content form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contents_path, :method => "post" do
      assert_select "input#content_tochka_id", :name => "content[tochka_id]"
      assert_select "input#content_data_id", :name => "content[data_id]"
    end
  end
end
