json.array!(@posts) do |post|
  json.extract! post, :id, :context, :user_id, :integer
  json.url post_url(post, format: :json)
end
