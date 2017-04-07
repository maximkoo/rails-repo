class DistrictsController < ApplicationController
def index
  @districts=District.all
end	

def show
  @district=District.find(params[:id])
end	

def new
  @district=District.new
end
end
