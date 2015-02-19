json.array!(@employment_applications) do |employment_application|
  json.extract! employment_application, :id, :name, :email, :message, :office_location
  json.url employment_application_url(employment_application, format: :json)
end
