class HouseController < ApplicationController
	def index
    @houses=House.all;
  end

  def show
    @h=House.find(params[:id])
  end 

end
