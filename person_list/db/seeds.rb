# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'rubygems'
require 'faker'

#person1=Person.create(name: 'Ololoev',birthdate: '01-ЯНВ-2004', credit: '25', comments: 'No comments');
#person2=Person.create(name: 'Ololoev2',birthdate: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), credit: '25', comments: 'No comments');

10.times do |x|
 Person.create(name: Faker::Name.name,
 	           birthdate: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), 
 	           credit: '25', 
 	           comments: Faker::Company.bs);
end;
