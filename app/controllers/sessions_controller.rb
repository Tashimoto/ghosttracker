class SessionsController < ApplicationController
  def new  #new is really just the name for the view. It intantiates.

  end


#create handles the saving. new : create as edit : update.
#not saving user as an instance variable because we're not going to be using it over and over, and not going to be using it in a view
  def create  
    user = User.find_by(:email => params[:session][:email])  #make sure that they are saved as a user. if not, returns nil. if yes, returns user.
    if user && user.authenticate(params[:session][:password]) #if both of these work, log user in
      redirect_to :back
    else 
      redirect_to :back
    end
  end

  def destroy

  end


end
