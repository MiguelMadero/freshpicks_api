require 'spec_helper'

describe "dishes/show" do
  before(:each) do
    @dish = assign(:dish, stub_model(Dish,
      :name => "Name",
      :desription => "Desription",
      :price => 1.5,
      :ingredients => "Ingredients",
      :diet_flags => "Diet Flags",
      :cuisine => "Cuisine",
      :belongs_to => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Desription/)
    rendered.should match(/1.5/)
    rendered.should match(/Ingredients/)
    rendered.should match(/Diet Flags/)
    rendered.should match(/Cuisine/)
    rendered.should match(/1/)
  end
end
