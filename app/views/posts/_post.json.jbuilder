json.extract! post, :id, :body, :title, :image_url, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
