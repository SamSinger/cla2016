require 'rails_helper'

RSpec.describe "people/edit", :type => :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :first_name => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :office_address => "MyString",
      :phone => "MyString",
      :rank_description => "MyString",
      :interest_areas => "MyText",
      :department_id => 1,
      :category_id => 1,
      :au_user_name => "MyString",
      :password_digest => "MyString",
      :role => "MyString",
      :monday_hours => "MyString",
      :tuesday_hours => "MyString",
      :wednesday_hours => "MyString",
      :thursday_hours => "MyString",
      :friday_hours => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do

      assert_select "input#person_first_name[name=?]", "person[first_name]"

      assert_select "input#person_middle_name[name=?]", "person[middle_name]"

      assert_select "input#person_last_name[name=?]", "person[last_name]"

      assert_select "input#person_email[name=?]", "person[email]"

      assert_select "input#person_office_address[name=?]", "person[office_address]"

      assert_select "input#person_phone[name=?]", "person[phone]"

      assert_select "input#person_rank_description[name=?]", "person[rank_description]"

      assert_select "textarea#person_interest_areas[name=?]", "person[interest_areas]"

      assert_select "input#person_department_id[name=?]", "person[department_id]"

      assert_select "input#person_category_id[name=?]", "person[category_id]"

      assert_select "input#person_au_user_name[name=?]", "person[au_user_name]"

      assert_select "input#person_password_digest[name=?]", "person[password_digest]"

      assert_select "input#person_role[name=?]", "person[role]"

      assert_select "input#person_monday_hours[name=?]", "person[monday_hours]"

      assert_select "input#person_tuesday_hours[name=?]", "person[tuesday_hours]"

      assert_select "input#person_wednesday_hours[name=?]", "person[wednesday_hours]"

      assert_select "input#person_thursday_hours[name=?]", "person[thursday_hours]"

      assert_select "input#person_friday_hours[name=?]", "person[friday_hours]"
    end
  end
end
