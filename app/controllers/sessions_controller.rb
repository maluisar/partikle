get '/sessions/new' do
  if request.xhr?
    erb :'sessions/new', layout: false
  else
    erb :'sessions/new'
  end
end

post '/sessions' do
  @user = User.find_by(username: params[:username])
  if @user && @user.password == params[:password]
    session[:id] = @user.id
    redirect "/"
  else
    @errors = ["Wrong email or password"]
    redirect "/sessions/new"
  end
end

delete '/sessions' do
  session[:id] = nil
  redirect "/"
end