class PicturesController < ApplicationController
  def index
    @fff=Picture.all  #.where(id:'10009')
  end

  def show
  end

  def new
    @picture=Picture.new
  end

  def create
    params1=params.require(:picture).permit(:name,:image)
    @picture=Picture.new(params1)
    if @picture.save then
      redirect_to :action=>'index'
    end 
  end

  def destroy
  end
end
