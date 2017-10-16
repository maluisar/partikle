get '/users/new' do
  erb :'user/new'
end

post '/users' do
  @user = User.new{params[:user]}
  if @user.save && params[:password] == params[:password_auth]
    @user.password = params[:password]
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'user/new'
  end
end

get '/users/:id' do
  erb :'user/show'
end

get '/users/:id/edit' do
  erb :'users/edit'
end

patch '/users/:id' do
  #change password or default location
end



