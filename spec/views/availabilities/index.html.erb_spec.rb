require 'spec_helper'

describe "availabilities/index" do
  before(:each) do
    assign(:availabilities, [
      stub_model(Availability,
        :initial_amount => 1,
        :remaining_amount => 2,
        :belongs_to => 3
      ),
      stub_model(Availability,
        :initial_amount => 1,
        :remaining_amount => 2,
        :belongs_to => 3
      )
    ])
  end

  it "renders a list of availabilities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
