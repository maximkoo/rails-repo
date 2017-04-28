# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
e=Employee.first(5)
e.each do |i|
	2.times do
		Address.create(:city=>Faker::Address.city, 
					   :street_addr=>Faker::Address.street_address,
					   :employee=>i);
	end;
end;	