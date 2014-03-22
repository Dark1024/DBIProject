json.array!(@stations) do |station|
  json.extract! station, :id, :name, :address, :phone_number, :office_hours
  json.url station_url(station, format: :json)
end
