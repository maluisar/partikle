post '/location_views' do

  zipcode = params[:zipcode]

  @view = LocationView.new(zipcode: zipcode)
  call = AirQualityShow.new(zipcode)

  if logged_in?
    current_user.views << @view
  end

  @view.aqi = call.aqi
  @view.recs = call.recs["health"]
  @view.sports = call.recs["sport"]
  @view.outside = call.recs["outside"]

  @view.save

  redirect "/location_views/#{@view.id}"
end

get "/location_views/:id" do
  @view = LocationView.find(params[:id])
  erb :'location_views/show'
end


get "/location_views/:location_view_id/activities" do

  @view = LocationView.find(params[:location_view_id])

  if params.keys[0] == "sports"
    @activity = @view.sports
  else
    @activity = @view.outside
  end

  if request.xhr?
    @activity.to_s
  else
    erb :'location_views/activities'
  end


end
