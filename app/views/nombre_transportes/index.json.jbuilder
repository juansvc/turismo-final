json.array!(@nombre_transportes) do |nombre_transporte|
  json.extract! nombre_transporte, :id, :nombre
  json.url nombre_transporte_url(nombre_transporte, format: :json)
end
