before '/secret' do
  if session[:name]
    @message_name = session[:name]
    erb :secret
  else
    erb :principal
  end
end

post '/register' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @user_name = params[:name]
  # p @user_name
  @user_mail = params[:mail]
  # p @user_mail
  @user_pass = params[:password]
  # p @user_pass

  User.create(usuario: @user_name, mail: @user_mail, password: @user_pass)

  redirect to '/'
end

post '/login' do
  
  email = params[:mail]
  password = params[:password]
#buscar si existe el usuario
  val_user = User.authenticate(email, password)

  if val_user
    session[:id] = val_user.id
    session[:email] = val_user.mail
    session[:user_name] = val_user.usuario
    redirect to '/secret' 
  else
    session[:error_message] = "No son correctos tus datos"
    redirect to '/'
  end
end

get '/secret' do
  erb :index
end

get '/logout' do
  session.clear
  erb :principal
end