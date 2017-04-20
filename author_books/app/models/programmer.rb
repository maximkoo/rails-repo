class Programmer < ActiveRecord::Base
	has_many :projects
	has_many :clients, :through=>"projects"

	def self.search(search)
		if search
			where('name LIKE ?',"%#{search}%")
		else
			all
		end;	
	end;	
end
