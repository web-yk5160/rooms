# json.array! @rooms, partial: "rooms/room", as: :room

json.array!(@rooms) do |room|
  json.extract! room, :id, :owner_id, :uid, :reputation_count, :name, :description, :has_daily_price, :daily_price, :has_hourly_price, :hourly_price, :capacity, :reputation_score, :thumbnails, :event_types, :amenities
  json.url room_url(room, format: :json)
end
