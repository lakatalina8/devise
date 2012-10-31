require 'spec_helper'

describe "texts/new" do
  before(:each) do
    assign(:text, stub_model(Text,
      :content_id => 1,
      :text_data => "MyText"
    ).as_new_record)
  end

  it "renders new text form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => texts_path, :method => "post" do
      assert_select "input#text_content_id", :name => "text[content_id]"
      assert_select "textarea#text_text_data", :name => "text[text_data]"
    end
  end
end
