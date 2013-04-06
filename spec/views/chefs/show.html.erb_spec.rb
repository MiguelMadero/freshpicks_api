require 'spec_helper'

describe "chefs/show" do
  before(:each) do
    @chef = assign(:chef, stub_model(Chef,
      :name => "Name",
      :username => "Username",
      :rating => 1.5,
      :location => "Location",
      :bio => "Bio",
      :specialty => "Specialty",
      :belongs_to => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Username/)
    rendered.should match(/1.5/)
    rendered.should match(/Location/)
    rendered.should match(/Bio/)
    rendered.should match(/Specialty/)
    rendered.should match(/1/)
  end
end
