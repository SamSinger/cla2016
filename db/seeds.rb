# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 5.times do |i|
   Person.create!(first_name: "Sam#{i}", last_name: "Singer#{i}", office_address: "Haley")
 end

 
 #AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
