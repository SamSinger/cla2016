require 'rails_helper'

RSpec.describe "people/show", :type => :view do
  before(:each) do
    @person = assign(:person, Person.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Office Address/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Rank Description/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Au User Name/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/Monday Hours/)
    expect(rendered).to match(/Tuesday Hours/)
    expect(rendered).to match(/Wednesday Hours/)
    expect(rendered).to match(/Thursday Hours/)
    expect(rendered).to match(/Friday Hours/)
  end
end
