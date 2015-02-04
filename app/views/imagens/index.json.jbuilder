json.array!(@imagens) do |imagen|
  json.extract! imagen, :id, :nombre_imagen, :imagen, :descripcion_imagen, :lugar_id, :lugar_id
  json.url imagen_url(imagen, format: :json)
end
