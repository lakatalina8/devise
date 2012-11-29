require 'spec_helper'

describe "join_point_categories/new" do
  before(:each) do
    assign(:join_point_category, stub_model(JoinPointCategory,
      :point_id => 1,
      :tcategory_id => 1
    ).as_new_record)
  end

  it "renders new join_tochka_tcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => join_tochka_tcategories_path, :method => "post" do
      assert_select "input#join_tochka_tcategory_tochka_id", :name => "join_tochka_tcategory[tochka_id]"
      assert_select "input#join_tochka_tcategory_tcategory_id", :name => "join_tochka_tcategory[tcategory_id]"
    end
  end
end
