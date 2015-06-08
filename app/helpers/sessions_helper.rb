
 #session is a memory store for the browser for as long as the browser is open, 
 #as opposed to cookies, which are persisted on computer's file system
module SessionsHelper 
  def login(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(:id => session[:user_id]) #@current_user is equal to @current user or User.find_by(:id)
  end

  def logout
    session.delete(:user_id)
    @current_user = nil
  end

end
