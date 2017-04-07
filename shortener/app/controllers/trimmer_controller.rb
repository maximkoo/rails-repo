class TrimmerController < ApplicationController
  def index
    @trimmers=Trimmer.all;
  end

  def show
    @out=Trimmer.where(short_url: params[:id]).first
    if @out.nil?
    #redirect_to (root_path)
    render :trololo
     else 
    redirect_to ("#{@out.long_url}")
      end
  end

  def new
    @trimmer=Trimmer.new;
  end

  def create
    @trimmer=Trimmer.new(trimmer_params);
    if @trimmer.save
      redirect_to :action => 'index'
    end  
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def trimmer_params
   params.require(:trimmer).permit(:long_url, :shorl_url);
  end

  def trololo
  end
end
