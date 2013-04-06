require 'spec_helper'

describe "chefs/index" do
  before(:each) do
    assign(:chefs, [
      stub_model(Chef,
        :name => "Name",
        :username => "Username",
        :rating => 1.5,
        :location => "Location",
        :bio => "Bio",
        :specialty => "Specialty",
        :belongs_to => 1
      ),
      stub_model(Chef,
        :name => "Name",
        :username => "Username",
        :rating => 1.5,
        :location => "Location",
        :bio => "Bio",
        :specialty => "Specialty",
        :belongs_to => 1
      )
    ])
  end

  it "renders a list of chefs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Bio".to_s, :count => 2
    assert_select "tr>td", :text => "Specialty".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
