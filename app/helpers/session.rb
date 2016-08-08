def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end

def login?
  session[:user_id].nil?
end

def require_user
  redirect '/users/login' unless !login?
end
