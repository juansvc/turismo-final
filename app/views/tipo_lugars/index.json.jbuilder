json.array!(@tipo_lugars) do |tipo_lugar|
  json.extract! tipo_lugar, :id, :nombre_tipo
  json.url tipo_lugar_url(tipo_lugar, format: :json)
end
