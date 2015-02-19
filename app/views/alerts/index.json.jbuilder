json.array!(@alerts) do |alert|
  json.extract! alert, :id, :body, :hours_to_live
  json.url alert_url(alert, format: :json)
end
