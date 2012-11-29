require 'spec_helper'

describe "points/edit" do
  before(:each) do
    @point = assign(:point, stub_model(Point,
      :name => "MyString"
    ))
  end

  it "renders the edit tochka form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tochkas_path(@point), :method => "post" do
      assert_select "input#tochka_name", :name => "tochka[name]"
    end
  end
end
