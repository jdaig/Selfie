post '/upload' do
  p params[:photo]
  @photo = Photo.create(photo: params[:photo])
  User.find(session[:id]).photos << @photo
  # #@photo.save!
  # @photos = Photo.all
  # puts "****"* 50
  # p @photos
  redirect '/secret'
end