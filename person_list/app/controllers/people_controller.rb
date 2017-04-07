class PeopleController < ApplicationController
  layout 'standard'
  def index
    @ppl=Person.all;
  end

  def show
    @ppp=Person.find(params[:id])
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

  def delete
  end

  def about
  end

  def trololo
    @p=params[:id]
    #@p=People.find(params[:id]);
    @p=Person.find(params[:id]);
    render :text=>"Hello #{@p.name}"
    #redirect_to people_about_path
  end

  def showbest
    #@ppl=People.all.select()
  end  
end
