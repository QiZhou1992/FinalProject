json.array!(@private_albums) do |private_album|
  json.extract! private_album, :id, :Name, :UserID
  json.url private_album_url(private_album, format: :json)
end
