require 'json'
class StreetController < ApplicationController
	def index
    @streets=Street.all.order('id');
    if params[:street_id].nil?
      @houses=House.where("street_id"=>@streets.first);
    else  
      @houses=House.where({street_id:params[:street_id]});
    end
  end

  def show
   #@s=Street.find(params[:id])
   #render plain: "OK"
   #render inline: "xml.p {'Horrid coding practice!'}", type: :builder
    @streets=Street.all;
   render xml: @streets
  end 

  def houses_by_street
  	#if params[:street_id].nil? 
  	#	@houses=House.all;
  	#else
  		#@houses=House.where({street_id:params[:street_id]}) 
  	#end;
    @houses=House.all;
  end	

  def create_external
    @street=Street.new;
    @street.name=params[:p_name];
    if @street.save
      redirect_to :action => :index
    end     
  end; 

  def create_external_post
    @street=Street.new;
    puts "REQUEST HERE IS = "+request.body.read();
    #@street.name=params[:p_name];
    #p1=JSON.parse(params[:street]);#.require('street').permit("name") )
    #@street.name=p1[:name]
    #render json: request.body;
    #body = request.body.read();
    bj=JSON.parse(request.body.read());
    puts "PARSED BODY IS"+bj.to_s;
    @street.name=bj["name"]

    msg = {:token => :Success!, :courseId => :OK}
    render :json => msg
    #if @street.save
    #  redirect_to :action => :index
    #end   
  end;  
end
