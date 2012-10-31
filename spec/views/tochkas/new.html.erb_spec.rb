require 'spec_helper'

describe "tochkas/new" do
  before(:each) do
    assign(:tochka, stub_model(Tochka,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new tochka form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tochkas_path, :method => "post" do
      assert_select "input#tochka_name", :name => "tochka[name]"
    end
  end
end
