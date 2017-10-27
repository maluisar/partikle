get '/users/new' do
  erb :'users/new'
end

post '/users' do

  @user = User.new(params[:user])
  if params[:user][:password] != params[:password_auth]
    @errors = ["passwords don't match"]
    erb :'users/new'
  elsif @user.save
    session[:id] = @user.id
    erb :'users/show'
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/:id' do
  erb :'users/show'
end

get '/users/:id/edit' do
  erb :'users/edit'
end

patch '/users/:id' do
  #change password or default location
end



