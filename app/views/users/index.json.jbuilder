json.array!(@users) do |user|
  json.extract! user, :id, :Email, :Password, :Name, :FollowCount
  json.url user_url(user, format: :json)
end
