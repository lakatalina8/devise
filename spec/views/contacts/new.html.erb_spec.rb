require 'spec_helper'

describe "contacts/new" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :content_id => 1,
      :contact_data => "MyText"
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path, :method => "post" do
      assert_select "input#contact_content_id", :name => "contact[content_id]"
      assert_select "textarea#contact_contact_data", :name => "contact[contact_data]"
    end
  end
end
