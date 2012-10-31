require 'spec_helper'

describe "join_tochka_tcategories/show" do
  before(:each) do
    @join_tochka_tcategory = assign(:join_tochka_tcategory, stub_model(JoinTochkaTcategory,
      :tochka_id => 1,
      :tcategory_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
