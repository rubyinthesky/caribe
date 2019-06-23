json.extract! post, :id, :titulo, :fecha, :url_imagen, :id_usuario_creador, :contenido, :created_at, :updated_at
json.url post_url(post, format: :json)
