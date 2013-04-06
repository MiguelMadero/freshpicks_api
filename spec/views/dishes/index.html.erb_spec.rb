require 'spec_helper'

describe "dishes/index" do
  before(:each) do
    assign(:dishes, [
      stub_model(Dish,
        :name => "Name",
        :desription => "Desription",
        :price => 1.5,
        :ingredients => "Ingredients",
        :diet_flags => "Diet Flags",
        :cuisine => "Cuisine",
        :belongs_to => 1
      ),
      stub_model(Dish,
        :name => "Name",
        :desription => "Desription",
        :price => 1.5,
        :ingredients => "Ingredients",
        :diet_flags => "Diet Flags",
        :cuisine => "Cuisine",
        :belongs_to => 1
      )
    ])
  end

  it "renders a list of dishes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Desription".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Ingredients".to_s, :count => 2
    assert_select "tr>td", :text => "Diet Flags".to_s, :count => 2
    assert_select "tr>td", :text => "Cuisine".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
