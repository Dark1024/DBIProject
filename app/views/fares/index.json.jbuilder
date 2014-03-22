json.array!(@fares) do |fare|
  json.extract! fare, :id, :name, :price, :from, :to, :stopover, :category_id
  json.url fare_url(fare, format: :json)
end
