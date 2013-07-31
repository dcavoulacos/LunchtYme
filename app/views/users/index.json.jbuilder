json.array!(@users) do |user|
  json.extract! user, :name, :first_name, :last_name, :netid, :class_year, :res_col, :email, :phone_number, :gender, :friends, :likes, :mutual_friends, :object_me, :facebook_id, :provider, :oauth_token, :oauth_expires_at, :last_pull_from_facebook, :image_url
  json.url user_url(user, format: :json)
end