json.array!(@ciudads) do |ciudad|
  json.extract! ciudad, :id, :nombre_ciudad
  json.url ciudad_url(ciudad, format: :json)
end
