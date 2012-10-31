require 'spec_helper'

describe "tochkas/show" do
  before(:each) do
    @tochka = assign(:tochka, stub_model(Tochka,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
