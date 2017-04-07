class PictureController < ApplicationController
  def new
    @picture=Picture.new
  end

  def create
    # @picture=Picture.new(params.require(:picture).permit(:name,:image))
    # @picture.save
    # redirect_to :picture_index
    params1=params.require(:picture).permit(:name,:image)
    @picture=Picture.new(params1)
    if @picture.save then
      redirect_to :action=>'index'
    else 
      puts "NOT SAVED !!!!!!!!!!!"
      puts @picture.errors.messages
      #render plain: @picture.errors.messages
      #@errm=@picture.errors.messages
      if !@picture.valid?
        @errm="Something is wrong with the file";
        render :new
      end;  
    end 
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @pictures=Picture.all
  end

  def show
    @picture=Picture.find_by_id(:id)
  end
end
