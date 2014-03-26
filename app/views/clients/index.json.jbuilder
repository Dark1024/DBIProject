json.array!(@clients) do |client|
  json.extract! client, :id, :name, :birthday, :id_number
  json.url client_url(client, format: :json)
end
