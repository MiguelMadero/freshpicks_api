require 'spec_helper'

describe "chefs/show" do
  before(:each) do
    @chef = assign(:chef, stub_model(Chef,
      :name => "Name",
      :email => "Email",
      :username => "Username"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Username/)
  end
end
