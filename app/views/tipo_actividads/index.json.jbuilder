json.array!(@tipo_actividads) do |tipo_actividad|
  json.extract! tipo_actividad, :id, :nombre
  json.url tipo_actividad_url(tipo_actividad, format: :json)
end
