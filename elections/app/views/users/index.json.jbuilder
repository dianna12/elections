json.array!(@users) do |user|
  json.extract! user, :id, :login, :password, :email, :role, :constituency_id
  json.url user_url(user, format: :json)
end
