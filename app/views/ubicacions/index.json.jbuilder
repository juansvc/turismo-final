json.array!(@ubicacions) do |ubicacion|
  json.extract! ubicacion, :id, :longitud, :latitud, :referencia, :ciudad_id, :ciudad_id
  json.url ubicacion_url(ubicacion, format: :json)
end
