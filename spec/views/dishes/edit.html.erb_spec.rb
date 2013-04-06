require 'spec_helper'

describe "dishes/edit" do
  before(:each) do
    @dish = assign(:dish, stub_model(Dish,
      :name => "MyString",
      :price => 1.5,
      :belongs_to => 1
    ))
  end

  it "renders the edit dish form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dishes_path(@dish), :method => "post" do
      assert_select "input#dish_name", :name => "dish[name]"
      assert_select "input#dish_price", :name => "dish[price]"
      assert_select "input#dish_belongs_to", :name => "dish[belongs_to]"
    end
  end
end
