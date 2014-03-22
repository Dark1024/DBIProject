json.array!(@costs) do |cost|
  json.extract! cost, :id, :name, :from, :to, :stopover, :content, :price
  json.url cost_url(cost, format: :json)
end
