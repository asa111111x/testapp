json.extract! article, :id, :title, :content, :user_id, :score, :created_at, :updated_at
json.url article_url(article, format: :json)
