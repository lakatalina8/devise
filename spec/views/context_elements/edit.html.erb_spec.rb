require 'spec_helper'

describe "context_elements/edit" do
  before(:each) do
    @context_element = assign(:context_element, stub_model(ContextElement,
      :point_id => 1,
      :data_id => 1
    ))
  end

  it "renders the edit content form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contents_path(@context_element), :method => "post" do
      assert_select "input#content_tochka_id", :name => "content[tochka_id]"
      assert_select "input#content_data_id", :name => "content[data_id]"
    end
  end
end
