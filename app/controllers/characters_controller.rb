class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new
    @character.movie_id = params[:movie_id]
    @character.actor_id = params[:actor_id]
    @character.name = params[:name]

    if @character.save
      redirect_to "/characters", :notice => "Character created successfully."
    else
      render 'new'
    end
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])

    @character.movie_id = params[:movie_id]
    @character.actor_id = params[:actor_id]
    @character.name = params[:name]

    if @character.save
      redirect_to "/characters", :notice => "Character updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @character = Character.find(params[:id])

    @character.destroy

    redirect_to "/characters", :notice => "Character deleted."
  end
end
