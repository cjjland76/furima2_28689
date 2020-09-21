json.extract! item, :id, :name, :product, :category, :status, :delivery_fee, :delivery_area, :delivery_day, :price, :user_id, :view_count, :created_at, :updated_at
json.url item_url(item, format: :json)
