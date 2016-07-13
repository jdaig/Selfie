get '/' do
  session.clear
  # @photos = Photo.all en el index va
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :principal
end
