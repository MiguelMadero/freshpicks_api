require 'spec_helper'

describe "availabilities/new" do
  before(:each) do
    assign(:availability, stub_model(Availability,
      :initial_amount => 1,
      :remaining_amount => 1,
      :belongs_to => 1
    ).as_new_record)
  end

  it "renders new availability form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => availabilities_path, :method => "post" do
      assert_select "input#availability_initial_amount", :name => "availability[initial_amount]"
      assert_select "input#availability_remaining_amount", :name => "availability[remaining_amount]"
      assert_select "input#availability_belongs_to", :name => "availability[belongs_to]"
    end
  end
end
