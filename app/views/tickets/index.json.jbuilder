json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :client_id, :employee_id, :fare_id, :trip_id, :trip_date
  json.url ticket_url(ticket, format: :json)
end
