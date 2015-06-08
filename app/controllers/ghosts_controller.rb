class GhostsController < ApplicationController
  before_action :set_ghost, only: [:show, :edit, :destroy, :update, :set_user] #DRY code

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
    if params[:belongs_to_user] == 'true' && current_user  #set and save this attribute on the ghost
      @ghost.user_id = current_user.id
    end
    if @ghost.save
      flash[:success] = 'The following ghost is now in the database: '
      redirect_to ghost_path(@ghost)
    else
      redirect :back
    end
  end

  def destroy
    @ghost.destroy
    redirect_to ghosts_path
  end

  def update
    params[:ghost][:features] = params[:ghost][:features].split ", "
    if params[:belongs_to_user] == 'true' && current_user  
      @ghost.user_id = current_user.id
    end
    if @ghost.update(ghost_params)
      flash[:success] = 'The following ghost was updated: '
      redirect_to ghost_path(@ghost)
    else
      redirect :back
    end
  end

  def set_user
    @ghost.user_id = current_user.id
    @ghost.save
    flash[:success] = 'Successfully tracking this ghost. '
    redirect_to ghost_path(@ghost)
  end


  private
  #through an http request, these are the only params that can be set
  def ghost_params
    params.require(:ghost).permit(:name, :location, :difficulty, :user_id, :image_url, :features => [])
  end

  def set_ghost
  	@ghost = Ghost.find(params[:id])  #params gives a hash to every variable that's passed to the action
  end
end
