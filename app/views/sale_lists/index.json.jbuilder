json.array!(@sale_lists) do |sale_list|
  json.extract! sale_list, :id, :mwc_html, :mwc_file_name
  json.url sale_list_url(sale_list, format: :json)
end
