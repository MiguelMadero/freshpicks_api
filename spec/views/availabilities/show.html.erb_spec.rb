require 'spec_helper'

describe "availabilities/show" do
  before(:each) do
    @availability = assign(:availability, stub_model(Availability,
      :initial_amount => 1,
      :remaining_amount => 2,
      :belongs_to => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
