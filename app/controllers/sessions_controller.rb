get '/sessions/new' do
  if request.xhr?
    erb :'sessions/new', layout: false
  else
    erb :'sessions/new'
  end
end

post '/sessions/' do
  @user = User.find_by_email(params[:email])
  if @user && @user.password == params[:password]
    session[:id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = ["Wrong email or password"]
    redirect "/sessions/new"
  end
end

delete '/sessions' do
  session[:id] = nil
  redirect "/index"
end