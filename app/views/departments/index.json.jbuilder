json.array!(@departments) do |department|
  json.extract! department, :id, :name, :details
  json.url department_url(department, format: :json)
end
