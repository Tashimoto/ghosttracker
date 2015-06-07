
 #session is a memory store for the browser for as long as the browser is open, 
 #as opposed to cookies, which are persisted on computer's file system
module SessionsHelper 
  def login(user)
    session[:user_id] = user.id
  end

end
