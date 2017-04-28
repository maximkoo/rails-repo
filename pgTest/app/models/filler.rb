class Filler
	def fill
		puts "Faker starts!"
		100.times do |i|
			Employee.create(:name=>Faker::Name.name,:job=>Faker::Job.title).save;
		end;	
		puts "Faker complete!"
	end;	
end;