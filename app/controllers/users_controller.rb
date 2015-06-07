class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      redirect :back
    end
  end

  def show
    @ghost = Ghost.new   #we're using this instance variable in the ghost form
  end


  private
  #through an http request, these are the only params that can be set
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation) 
  end

  def set_user
    @user = User.find(params[:id])  #params gives a hash to every variable that's passed to the action
  end

end


