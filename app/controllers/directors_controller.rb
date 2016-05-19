class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new
    @director.name = params[:name]
    @director.dob = params[:dob]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    if @director.save
      redirect_to "/directors", :notice => "Director created successfully."
    else
      render 'new'
    end
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])

    @director.name = params[:name]
    @director.dob = params[:dob]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    if @director.save
      redirect_to "/directors", :notice => "Director updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy

    redirect_to "/directors", :notice => "Director deleted."
  end
end
