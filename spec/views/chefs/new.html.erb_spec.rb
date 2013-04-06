require 'spec_helper'

describe "chefs/new" do
  before(:each) do
    assign(:chef, stub_model(Chef,
      :name => "MyString",
      :email => "MyString",
      :username => "MyString"
    ).as_new_record)
  end

  it "renders new chef form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => chefs_path, :method => "post" do
      assert_select "input#chef_name", :name => "chef[name]"
      assert_select "input#chef_email", :name => "chef[email]"
      assert_select "input#chef_username", :name => "chef[username]"
    end
  end
end
