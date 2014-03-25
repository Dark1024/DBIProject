json.array!(@drivers) do |driver|
  json.extract! driver, :id, :first_names, :last_names, :address, :phone_number, :email, :hire_date
  json.url driver_url(driver, format: :json)
end
