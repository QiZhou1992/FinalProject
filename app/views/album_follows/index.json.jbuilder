json.array!(@album_follows) do |album_follow|
  json.extract! album_follow, :id, :AlbumID, :FollowerID
  json.url album_follow_url(album_follow, format: :json)
end
