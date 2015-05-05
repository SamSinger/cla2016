require 'rails_helper'

RSpec.describe "people/index", :type => :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :email => "Email",
        :office_address => "Office Address",
        :phone => "Phone",
        :rank_description => "Rank Description",
        :interest_areas => "MyText",
        :department_id => 1,
        :category_id => 2,
        :au_user_name => "Au User Name",
        :password_digest => "Password Digest",
        :role => "Role",
        :monday_hours => "Monday Hours",
        :tuesday_hours => "Tuesday Hours",
        :wednesday_hours => "Wednesday Hours",
        :thursday_hours => "Thursday Hours",
        :friday_hours => "Friday Hours"
      ),
      Person.create!(
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :email => "Email",
        :office_address => "Office Address",
        :phone => "Phone",
        :rank_description => "Rank Description",
        :interest_areas => "MyText",
        :department_id => 1,
        :category_id => 2,
        :au_user_name => "Au User Name",
        :password_digest => "Password Digest",
        :role => "Role",
        :monday_hours => "Monday Hours",
        :tuesday_hours => "Tuesday Hours",
        :wednesday_hours => "Wednesday Hours",
        :thursday_hours => "Thursday Hours",
        :friday_hours => "Friday Hours"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Office Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Rank Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Au User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "Monday Hours".to_s, :count => 2
    assert_select "tr>td", :text => "Tuesday Hours".to_s, :count => 2
    assert_select "tr>td", :text => "Wednesday Hours".to_s, :count => 2
    assert_select "tr>td", :text => "Thursday Hours".to_s, :count => 2
    assert_select "tr>td", :text => "Friday Hours".to_s, :count => 2
  end
end
