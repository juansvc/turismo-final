json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :comentario, :lugar_id, :lugar_id
  json.url comentario_url(comentario, format: :json)
end
