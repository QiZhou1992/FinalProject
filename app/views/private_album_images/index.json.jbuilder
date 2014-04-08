json.array!(@private_album_images) do |private_album_image|
  json.extract! private_album_image, :id, :ImageID, :AlbumID
  json.url private_album_image_url(private_album_image, format: :json)
end
