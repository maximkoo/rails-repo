class Programmer < ActiveRecord::Base
	has_many :projects
	has_many :clients, :through=>"projects"

	def self.search(search)
		if search
			where('lower(name) LIKE ?',"%#{search.downcase}%")
		else
			all
		end;	
	end;	
end
