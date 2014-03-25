json.array!(@assistents) do |assistent|
  json.extract! assistent, :id, :first_names, :last_names, :address, :phone_number, :email, :hire_date
  json.url assistent_url(assistent, format: :json)
end
