json.array!(@canals) do |canal|
  json.extract! canal, :id
  json.url canal_url(canal, format: :json)
end
