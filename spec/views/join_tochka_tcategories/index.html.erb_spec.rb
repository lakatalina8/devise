require 'spec_helper'

describe "join_tochka_tcategories/index" do
  before(:each) do
    assign(:join_tochka_tcategories, [
      stub_model(JoinTochkaTcategory,
        :tochka_id => 1,
        :tcategory_id => 2
      ),
      stub_model(JoinTochkaTcategory,
        :tochka_id => 1,
        :tcategory_id => 2
      )
    ])
  end

  it "renders a list of join_tochka_tcategories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
