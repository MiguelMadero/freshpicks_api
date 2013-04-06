require 'spec_helper'

describe "dishes/edit" do
  before(:each) do
    @dish = assign(:dish, stub_model(Dish,
      :name => "MyString",
      :desription => "MyString",
      :price => 1.5,
      :ingredients => "MyString",
      :diet_flags => "MyString",
      :cuisine => "MyString",
      :belongs_to => 1
    ))
  end

  it "renders the edit dish form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dishes_path(@dish), :method => "post" do
      assert_select "input#dish_name", :name => "dish[name]"
      assert_select "input#dish_desription", :name => "dish[desription]"
      assert_select "input#dish_price", :name => "dish[price]"
      assert_select "input#dish_ingredients", :name => "dish[ingredients]"
      assert_select "input#dish_diet_flags", :name => "dish[diet_flags]"
      assert_select "input#dish_cuisine", :name => "dish[cuisine]"
      assert_select "input#dish_belongs_to", :name => "dish[belongs_to]"
    end
  end
end
