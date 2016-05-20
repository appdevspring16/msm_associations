class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new
    @actor.name = params[:name]
    @actor.dob = params[:dob]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    if @actor.save
      redirect_to "/actors", :notice => "Actor created successfully."
    else
      render 'new'
    end
  end

  def edit
    @actor = Actor.find(params[:id])
  end

  def update
    @actor = Actor.find(params[:id])

    @actor.name = params[:name]
    @actor.dob = params[:dob]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    if @actor.save
      redirect_to "/actors", :notice => "Actor updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @actor = Actor.find(params[:id])

    @actor.destroy

    redirect_to "/actors", :notice => "Actor deleted."
  end
end
