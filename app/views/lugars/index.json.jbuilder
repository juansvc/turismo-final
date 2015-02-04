json.array!(@lugars) do |lugar|
  json.extract! lugar, :id, :nombre_lugar, :descripcion_lugar, :telefonos, :link, :tipo_lugar_id, :ubicacion_id, :tipo_lugar_id, :ubicacion_id
  json.url lugar_url(lugar, format: :json)
end
