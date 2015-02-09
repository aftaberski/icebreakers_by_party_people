get '/signup' do
  erb :'/auth/signup'
end

post '/signup' do
  a_user = User.create(params[:user])
  session[:user] = a_user.id
  redirect '/'
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/login' do
  erb :'auth/login'
end

post '/login' do
  a_user = User.find_by(:email => params[:user][:email]).try(:authenticate, params[:user][:password])
  if a_user
    session[:user] = a_user.id
     redirect '/categories'
  else
    @invalid_login = true
    erb :'auth/login'
  end
end

get '/signup_partial' do
  erb :'/auth/signup', :layout => false
end
