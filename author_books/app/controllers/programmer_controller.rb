class ProgrammerController < ApplicationController
	def index
		@programmers=Programmer.search(params[:search]).paginate(:page=>params[:page], :per_page=>10)
		@headr="IT sux"
		#render :layout=>"application"
	end;

	def list
		render plain "TROLOLOLOLO"
	end;	

	
end
