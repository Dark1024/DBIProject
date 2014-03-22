json.array!(@clients) do |client|
  json.extract! client, :id, :name, :birthday
  json.url client_url(client, format: :json)
end
