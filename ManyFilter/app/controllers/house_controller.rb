class HouseController < ApplicationController
  def index
    params.slice("house_num_search","color_search","height1_search","height2_search");
    puts params
    @houses=House.includes(:street).order("streets.name");
      #select * from houses left outer join streets order by streets.name
     #@houses=House.where("house_num"=>params["house_num_search"]) if !params["house_num_search"].blank?
     #@houses=House.where("color"=>params["color_search"]) if !params["color_search"].blank?
    @houses=House.scope1(params["house_num_search"]) if !params["house_num_search"].blank?
    @houses=House.scope2(params["color_search"]) if !params["color_search"].blank?
    if params["height1_search"].present? || params["height2_search"].present?
      params["height1_search"]=0 if params["height1_search"].blank?
      params["height2_search"]=1000 if params["height2_search"].blank?
      @houses=House.scope3(params["height1_search"],params["height2_search"])
    end; 
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
