def current_user
  #TODO remove this - this is for testing only
  return User.find(1)
  # if session[:user_id]
  #   return User.find(session[:user_id])
  # else
  #   return nil
  # end
end
