class HousesController < ApplicationController
	def index_all
		@houses=House.all
		@hs=[]
		House.all.each do |x|
			@hs<<{:h=>x, :s=>Street.find(x.street_id)}
		end;	
		@hs=@hs.sort_by{|q| q[:s].name}		
	end	

	def index
	  @parent=Hash.new
	  if params.key?('street_id') then
	  	@parent['street']=Street.find(params[:street_id])	
      	@houses=House.where({street_id:params[:street_id]})
      end
      if params.key?('district_id') then
	  	@parent['district']=District.find(params[:district_id])	
      	@houses=House.where({district_id:params[:district_id]})
      end
	end
	
	#def index_by_district
	#	@district=District.find(params[:district_id])
	#	@houses=House.where({district_id:params[:district_id]})
	#end	

	def show
      @house=House.find(params[:id])
	end

	def new
		@streets=Street.all
		@districts=District.all
		@house=House.new
	end	

	def create
		p1=params.require('house').permit("num","num_extra","street_id","district_id")
		@house=House.new(p1)
		@house.save
		if @house.save 
			redirect_to :action => :index_all
		end	
	end	
end
