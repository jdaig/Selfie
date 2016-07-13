# class MyUploader < CarrierWave::Uploader::Base
#   include CarrierWave::MiniMagick
#   version :thumb do
#     process :resize_to_fill => [200,200]
#   end

#   storage :file
# end

class Photo < ActiveRecord::Base
  validates :photo, presence: true

  # El segundo parámetro es el nombre del uploader que se genera el paso 4
  mount_uploader :photo, PhotoUploader
end
