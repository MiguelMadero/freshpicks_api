require 'spec_helper'

describe "availabilities/edit" do
  before(:each) do
    @availability = assign(:availability, stub_model(Availability,
      :initial_amount => 1,
      :remaining_amount => 1
    ))
  end

  it "renders the edit availability form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => availabilities_path(@availability), :method => "post" do
      assert_select "input#availability_initial_amount", :name => "availability[initial_amount]"
      assert_select "input#availability_remaining_amount", :name => "availability[remaining_amount]"
    end
  end
end
