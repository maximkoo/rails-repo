class ProgrammerController < ApplicationController
	def index
		@programmers=Programmer.search(params[:search]).paginate(:page=>params[:page], :per_page=>10)
	end;

	def list
		render plain "TROLOLOLOLO"
	end;	

	
end
