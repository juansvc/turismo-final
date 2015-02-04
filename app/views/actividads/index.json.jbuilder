json.array!(@actividads) do |actividad|
  json.extract! actividad, :id, :descripcion, :hora_inicio, :hora_fin, :tipo_actividad_id, :tipo_actividad_id
  json.url actividad_url(actividad, format: :json)
end
