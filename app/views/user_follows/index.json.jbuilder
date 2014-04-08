json.array!(@user_follows) do |user_follow|
  json.extract! user_follow, :id, :UserID, :FollowerID
  json.url user_follow_url(user_follow, format: :json)
end
