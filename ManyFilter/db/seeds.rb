# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..20).each do |i|
	s=Street.create(:name=>Faker::Address.street_name);
	s.save;
	(1..5).each do |k|
		h=House.create(:street=>s, 
					   :house_num=>Faker::Address.building_number,
					   :color=>Faker::Color.color_name,
					   :height=>Random.rand(20));
		h.save;
	end;
end;	
