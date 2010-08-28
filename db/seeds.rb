# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

orion = Person.create :first_name => 'Orion', :last_name => 'Edwards', :phone_number => '123 456 789', :address => "333 Some Street\nHamilton\n"
