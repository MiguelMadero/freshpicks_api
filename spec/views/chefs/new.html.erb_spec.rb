require 'spec_helper'

describe "chefs/new" do
  before(:each) do
    assign(:chef, stub_model(Chef,
      :name => "MyString",
      :username => "MyString",
      :rating => 1.5,
      :location => "MyString",
      :bio => "MyString",
      :specialty => "MyString",
      :belongs_to => 1
    ).as_new_record)
  end

  it "renders new chef form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => chefs_path, :method => "post" do
      assert_select "input#chef_name", :name => "chef[name]"
      assert_select "input#chef_username", :name => "chef[username]"
      assert_select "input#chef_rating", :name => "chef[rating]"
      assert_select "input#chef_location", :name => "chef[location]"
      assert_select "input#chef_bio", :name => "chef[bio]"
      assert_select "input#chef_specialty", :name => "chef[specialty]"
      assert_select "input#chef_belongs_to", :name => "chef[belongs_to]"
    end
  end
end
