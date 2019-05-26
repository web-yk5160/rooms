json.extract! room, :id, :name, :description, :has_daily_price, :daily_price, :has_hourly_price, :hourly_price, :capacity, :reputation_score, :created_at, :updated_at
json.url room_url(room, format: :json)
