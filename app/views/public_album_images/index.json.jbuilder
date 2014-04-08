json.array!(@public_album_images) do |public_album_image|
  json.extract! public_album_image, :id, :ImageID, :AlbumID
  json.url public_album_image_url(public_album_image, format: :json)
end
