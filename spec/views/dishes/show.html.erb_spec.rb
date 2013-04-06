require 'spec_helper'

describe "dishes/show" do
  before(:each) do
    @dish = assign(:dish, stub_model(Dish,
      :name => "Name",
      :price => 1.5,
      :belongs_to => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
  end
end
