json.array!(@transportes) do |transporte|
  json.extract! transporte, :id, :lugar_salida, :lugar_llegada, :hora_salida, :hora_llegada, :fecha, :nombre_transporte_id, :nombre_transporte_id
  json.url transporte_url(transporte, format: :json)
end
