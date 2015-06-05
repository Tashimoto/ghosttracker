class GhostsController < ApplicationController
  before_action :set_ghost, only: [:show, :edit, :destroy] #DRY code

  def index
  	@ghosts = Ghost.all
  end

  def show
  end

  def new
  	@ghost = Ghost.new
  end

  def edit
  end

  #create method takes a hash (key value pair), inside the hash is the params of the object
  #like an array, but with keys and values instead of list
  #params is a multi-level hash. The key :ghost.. the value is itself a hash  
  def create
    params[:ghost][:features] = params[:ghost][:features].split ", "  #split takes one param: the character you want to split on, and it splits the string into an array
    @ghost = Ghost.new(ghost_params)
    if @ghost.save
      redirect_to ghost_path(@ghost)
    else
      redirect :back
    end
  end

  def destroy
    @ghost.destroy
    redirect_to ghosts_path
  end

  private
  #through an http request, these are the only params that can be set
  def ghost_params
    params.require(:ghost).permit(:name, :location, :difficulty, :features => [])
  end

  def set_ghost
  	@ghost = Ghost.find(params[:id])  #params gives a hash to every variable that's passed to the action
  end
end
