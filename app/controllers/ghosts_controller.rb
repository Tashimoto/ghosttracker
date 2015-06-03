class GhostsController < ApplicationController
  def index
  	@ghosts = Ghost.all
  end

  def show
  end

  def new
  end

  def edit
  end

  private
  #through an http request, these are the only params that can be set
  def ghost_params
  	params.require(:ghost).permit(:name, :location, :difficulty_level, :features)
  end

end
