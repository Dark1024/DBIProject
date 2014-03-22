json.array!(@shipments) do |shipment|
  json.extract! shipment, :id, :client_id, :addressee, :phone_number, :trip_id, :cost_id
  json.url shipment_url(shipment, format: :json)
end
