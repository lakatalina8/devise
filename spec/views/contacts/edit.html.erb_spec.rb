require 'spec_helper'

describe "contacts/edit" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :content_id => 1,
      :contact_data => "MyText"
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path(@contact), :method => "post" do
      assert_select "input#contact_content_id", :name => "contact[content_id]"
      assert_select "textarea#contact_contact_data", :name => "contact[contact_data]"
    end
  end
end
