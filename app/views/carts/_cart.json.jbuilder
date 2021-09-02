json.extract! cart, :id, :title, :created_at, :updated_at
json.url cart_url(cart, format: :json)
