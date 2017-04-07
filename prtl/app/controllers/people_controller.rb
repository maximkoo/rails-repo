class PeopleController < ApplicationController
	layout 'lay1'
	def index
    	@ppl=Person.all.select{|p| p.name.size>12};
  	end 
end
