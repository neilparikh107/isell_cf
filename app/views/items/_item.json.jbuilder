json.extract! item, :id, :name, :picture, :description, :price, :posted_date, :expiry_date, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)