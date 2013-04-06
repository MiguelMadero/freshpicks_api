require 'spec_helper'

describe "chefs/index" do
  before(:each) do
    assign(:chefs, [
      stub_model(Chef,
        :name => "Name",
        :email => "Email",
        :username => "Username"
      ),
      stub_model(Chef,
        :name => "Name",
        :email => "Email",
        :username => "Username"
      )
    ])
  end

  it "renders a list of chefs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
  end
end
