require 'spec_helper'

describe "tochkas/edit" do
  before(:each) do
    @tochka = assign(:tochka, stub_model(Tochka,
      :name => "MyString"
    ))
  end

  it "renders the edit tochka form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tochkas_path(@tochka), :method => "post" do
      assert_select "input#tochka_name", :name => "tochka[name]"
    end
  end
end
