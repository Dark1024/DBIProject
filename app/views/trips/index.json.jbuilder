json.array!(@trips) do |trip|
  json.extract! trip, :id, :employee_id, :autobus_id, :schedule_id, :available_seats
  json.url trip_url(trip, format: :json)
end
