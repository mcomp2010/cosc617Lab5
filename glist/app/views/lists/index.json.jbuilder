json.array!(@lists) do |list|
  json.extract! list, :title
  json.url list_url(list, format: :json)
end
