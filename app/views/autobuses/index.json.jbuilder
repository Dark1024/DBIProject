json.array!(@autobuses) do |autobus|
  json.extract! autobus, :id, :license_plate, :brand, :color, :capacity, :passenger_capacity
  json.url autobus_url(autobus, format: :json)
end
