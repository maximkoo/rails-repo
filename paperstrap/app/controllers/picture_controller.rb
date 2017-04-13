class PictureController < ApplicationController
  before_filter :ccc_call_1, only: [:new]
  before_filter :ccc_call_2, only: [:index]

  def ccc_call_1
    puts "CALLBACK CALLED !!!11"
  end;  

  def ccc_call_2
    puts "CALLBACK CALLED !!!2"
  end;

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
        flash["alert"]=@errm
        #render :new
        redirect_to :picture_new
      end;  
    end 
  end

  def edit
  end

  def update
  end

  def destroy
    Picture.find_by_id(params[:id]).destroy;
    flash[:notice]="Picture number #{params[:id]} has been destroyed";
    redirect_to :picture_index
  end

  def index
    @pictures=Picture.all
  end

  def show
    @picture=Picture.find_by_id(params[:id])
  end
end
