json.array!(@public_albums) do |public_album|
  json.extract! public_album, :id, :Name, :FollowCount
  json.url public_album_url(public_album, format: :json)
end
