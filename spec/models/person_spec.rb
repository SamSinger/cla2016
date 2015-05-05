require 'rails_helper'

RSpec.describe Person, :type => :model do
  before do
    @person = Person.create!(first_name: "Sam", last_name: "Singer")
  end

  it "should create a new person" do
    expect(Person.count).to eq(1)
  end

end
