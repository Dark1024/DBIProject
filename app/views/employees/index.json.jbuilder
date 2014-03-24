json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_names, :last_names, :address, :phone_number, :email, :hire_date, :department_id, :station_id
  json.url employee_url(employee, format: :json)
end
