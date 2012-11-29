require 'spec_helper'

describe "contacts/index" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :context_element_id => 1,
        :contact_data => "MyText"
      ),
      stub_model(Contact,
        :context_element_id => 1,
        :contact_data => "MyText"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
