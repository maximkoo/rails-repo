class Filler
	def fill
		puts "Faker starts!"
		100.times do |i|
			n=Faker::Name.name;
			Programmer.create(:name=>n).save;
		end;	
		puts "Faker complete!"
	end;	
end;